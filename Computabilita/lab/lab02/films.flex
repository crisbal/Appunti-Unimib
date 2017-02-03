%%

%public
%class FilmLexer
%standalone
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

%%

<YYINITIAL> {
	{DOCTYPE_OPEN}{SPACE} {
		yybegin(InsideDOCTYPE);
	}

	{XML_PREAMBLE_OPEN}{SPACE}{XML_PREAMBLE_CONTENT}{SPACE_O}{XML_PREAMBLE_CLOSE} {
		String matchedText = yytext();
		System.out.println("XML PREAMBLE: " + matchedText);
	}

	{TAG_OPEN}{ACCEPTED_TAG} {
		String matchedText = yytext().trim();
		String tagName = matchedText.substring(1, matchedText.length());
		System.out.println("OPENING TAG: " + tagName);
		yybegin(InsideOpeningTag);
	}

	{TAG_OPEN_CLOSING}{ACCEPTED_TAG}{SPACE_O}{TAG_CLOSE} {
		String matchedText = yytext().trim();
		String tagName = matchedText.substring(2, matchedText.length()-1);
		//System.out.println("CLOSING TAG: " + tagName);
	}
}

<InsideDOCTYPE> {
	{DOCTYPE_ROOT_TAG}{SPACE} {
		System.out.println("DOCTYPE_ROOT_TAG: " + yytext().trim());
	}

	{DOCTYPE_SYSTEM_AND_FILENAME} {
		System.out.println("DOCTYPE_SYSTEM: " + yytext());
		System.out.println("DOCTYPE_FILENAME: " + yytext().replaceAll(" ","").replace("SYSTEM",""));

	}

	{SPACE_O}{DOCTYPE_CLOSE} {
		yybegin(YYINITIAL);
	}
}

<InsideOpeningTag> {
	{SPACE_O}{TAG_CLOSE} {
		yybegin(YYINITIAL);	
	}

	{SPACE_O}{TAG_CLOSE_SELF_CLOSING} {
		yybegin(YYINITIAL);
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

[\s\t\n\r]+ { }

<YYINITIAL> {
	{TAG_CONTENT} {
		System.out.println("\tTAG-CONTENT:" + yytext());
	}
}

[^] { 
	throw new Error("Illegal character '" + yytext() + "' at line " + yyline); 
}