import java.util.*;

%%

%byaccj

%{
  	private Parser yyparser;
  	private HashMap<String, Short> tagToToken;
 	
 	public Yylex(java.io.Reader r, Parser yyparser) {
    	this(r);
    	this.yyparser = yyparser;

		tagToToken = new HashMap<String, Short>();
		tagToToken.put("open-films", Parser.OPEN_FILMS);
		tagToToken.put("open-film", Parser.OPEN_FILM);
		tagToToken.put("open-titolo", Parser.OPEN_TITLE);
		tagToToken.put("open-sottotitolo", Parser.OPEN_SUBTITLE);
		tagToToken.put("open-attori", Parser.OPEN_ACTOR);
		tagToToken.put("open-attore", Parser.OPEN_ACTORS);
		tagToToken.put("open-nome", Parser.OPEN_NAME);
		tagToToken.put("open-cognome", Parser.OPEN_SURNAME);
		tagToToken.put("open-compagnie", Parser.OPEN_COMPANIES);
		tagToToken.put("open-compagnia", Parser.OPEN_COMPANY);
		tagToToken.put("open-categorie", Parser.OPEN_CATEGORIES);
		tagToToken.put("open-categoria", Parser.OPEN_CATEGORY);

		tagToToken.put("close-films", Parser.CLOSE_FILMS);
		tagToToken.put("close-film", Parser.CLOSE_FILM);
		tagToToken.put("close-titolo", Parser.CLOSE_TITLE);
		tagToToken.put("close-sottotitolo", Parser.CLOSE_SUBTITLE);
		tagToToken.put("close-attori", Parser.CLOSE_ACTOR);
		tagToToken.put("close-attore", Parser.CLOSE_ACTORS);
		tagToToken.put("close-nome", Parser.CLOSE_NAME);
		tagToToken.put("close-cognome", Parser.CLOSE_SURNAME);
		tagToToken.put("close-compagnie", Parser.CLOSE_COMPANIES);
		tagToToken.put("close-compagnia", Parser.CLOSE_COMPANY);
		tagToToken.put("close-categorie", Parser.CLOSE_CATEGORIES);
		tagToToken.put("close-categoria", Parser.CLOSE_CATEGORY);
  	}
%}

%line
%unicode

%states InsideOpeningTag, InsideDOCTYPE

SPACE = \s+
SPACE_O = \s*

XML_PREAMBLE_OPEN = "<?xml"
XML_PREAMBLE_CONTENT = [^?]+ 
XML_PREAMBLE_CLOSE = "?>"

DOCTYPE_OPEN = "<!DOCTYPE"
//DOCTYPE_GENERIC_CONTENT = [^>]+ 
DOCTYPE_CLOSE = ">"
DOCTYPE_ROOT_TAG = "films"
DOCTYPE_SYSTEM_AND_FILENAME = SYSTEM{SPACE}\"[^\"]+\"

TAG_OPEN = "<"
TAG_OPEN_CLOSING = "</"
TAG_CLOSE = ">"
TAG_CLOSE_SELF_CLOSING = "/>"

//TAG_NAME_GENERIC = \w+
TAG_CONTENT = [^<]+

//ATTRIBUTE_NAME_GENERIC = \w+
ATTRIBUTE_EQUAL = "="
ATTRIBUTE_VALUE = \"[^\"]+\"

TAG_MOVIES = films
TAG_MOVIE = film
TAG_TITLE = titolo
TAG_SUBTITLE = sottotitolo
TAG_ACTORS = attori
TAG_ACTOR = attore
TAG_ACTOR_NAME = nome
TAG_ACTOR_SURNAME = cognome
TAG_COMPANIES = compagnie
TAG_COMPANY = compagnia
TAG_DESCRIPTION = descrizione
TAG_CATEGORIES = categorie
TAG_CATEGORY = categoria



ACCEPTED_TAG = {TAG_MOVIES} | {TAG_MOVIE} | {TAG_TITLE} | {TAG_SUBTITLE} | {TAG_ACTORS} | {TAG_ACTOR} | {TAG_ACTOR_NAME} | {TAG_ACTOR_SURNAME} | {TAG_COMPANIES} | {TAG_COMPANY} | {TAG_DESCRIPTION} | {TAG_CATEGORIES} | {TAG_CATEGORY}

ATTRIBUTE_ID = id
ATTRIBUTE_RATING = voto

ACCEPTED_ATTRIBUTE = {ATTRIBUTE_ID} | {ATTRIBUTE_RATING}

NL = \r\n|\r|\n

%%

{NL} { return Parser.NL; }

<YYINITIAL> {
	{DOCTYPE_OPEN}{SPACE} {
		yybegin(InsideDOCTYPE);

		return Parser.DOCTYPE_OPEN;
	}

	{XML_PREAMBLE_OPEN}{SPACE}{XML_PREAMBLE_CONTENT}{SPACE_O}{XML_PREAMBLE_CLOSE} {
		String matchedText = yytext();
		System.out.println("XML PREAMBLE: " + matchedText);

		return Parser.XML_PREAMBLE;
	}

	{TAG_OPEN}{ACCEPTED_TAG} {
		String matchedText = yytext().trim();
		String tagName = matchedText.substring(1, matchedText.length());
		System.out.println("OPENING TAG: " + tagName);
		yybegin(InsideOpeningTag);

		return tagToToken.get("open-"+tagName);
	}

	{TAG_OPEN_CLOSING}{ACCEPTED_TAG}{SPACE_O}{TAG_CLOSE} {
		String matchedText = yytext().trim();
		String tagName = matchedText.substring(2, matchedText.length()-1);
		System.out.println("CLOSING TAG: " + tagName);

		return tagToToken.get("close-"+tagName);
	}
}

<InsideDOCTYPE> {
	{DOCTYPE_ROOT_TAG}{SPACE} {
		System.out.println("DOCTYPE_ROOT_TAG: " + yytext().trim());

		return Parser.DOCTYPE_ROOT_TAG;
	}

	{DOCTYPE_SYSTEM_AND_FILENAME} {
		System.out.println("DOCTYPE_SYSTEM: " + yytext());
		System.out.println("DOCTYPE_FILENAME: " + yytext().replaceAll(" ","").replace("SYSTEM",""));

		return Parser.DOCTYPE_SYSTEM_AND_FILENAME;
	}

	{SPACE_O}{DOCTYPE_CLOSE} {
		yybegin(YYINITIAL);
		return Parser.DOCTYPE_CLOSE;
	}
}

<InsideOpeningTag> {
	{SPACE_O}{TAG_CLOSE} {
		yybegin(YYINITIAL);	

		return Parser.CLOSE_OPENING;
	}

	{SPACE_O}{TAG_CLOSE_SELF_CLOSING} {
		yybegin(YYINITIAL);
		
		return Parser.CLOSE_SELF_CLOSING;
	}

	{SPACE}{ACCEPTED_ATTRIBUTE}{ATTRIBUTE_EQUAL}  {
		String matchedText = yytext();
		String attributeName = matchedText.substring(0, matchedText.length()-1);
		System.out.println("\tATTRIBUTE-NAME: " + attributeName);	
	}

	{ATTRIBUTE_VALUE} {
		String matchedText = yytext();
		String attributeValue = matchedText.substring(1, matchedText.length()-1);
		System.out.println("\t\tATTRIBUTE-VALUE: " + attributeValue);
	}
}

[\s\t]+ { }

<YYINITIAL> {
	{TAG_CONTENT} {
		System.out.println("\tTAG-CONTENT:" + yytext());

		return Parser.TAG_CONTENT;
	}
}

[^] { 
	throw new Error("Illegal character '" + yytext() + "' at line " + yyline); 
}