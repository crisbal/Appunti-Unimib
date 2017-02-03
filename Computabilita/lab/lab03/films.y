%{
  import java.io.*;
%}
      
%token NL          /* newline  */
%token XML_PREAMBLE
%token DOCTYPE_OPEN, DOCTYPE_CLOSE, DOCTYPE_ROOT_TAG, DOCTYPE_SYSTEM_AND_FILENAME
%token OPEN_FILMS, OPEN_FILM, OPEN_TITLE, OPEN_SUBTITLE, OPEN_ACTOR, OPEN_ACTORS, OPEN_NAME, OPEN_SURNAME, OPEN_COMPANIES, OPEN_COMPANY, OPEN_CATEGORIES, OPEN_CATEGORY, CLOSE_FILMS, CLOSE_FILM, CLOSE_TITLE, CLOSE_SUBTITLE, CLOSE_ACTOR, CLOSE_ACTORS, CLOSE_NAME, CLOSE_SURNAME, CLOSE_COMPANIES, CLOSE_COMPANY, CLOSE_CATEGORIES, CLOSE_CATEGORY
%token CLOSE_OPENING, CLOSE_SELF_CLOSING
%token TAG_CONTENT

%type<sval> newline, doctype, preamble
%%

xml:   preamble newline doctype newline films;
  
newline: NL { $$ = System.lineSeparator(); }
         | newline NL { $$ = $1 + System.lineSeparator(); }

preamble: XML_PREAMBLE { $$ = "PREAMBOLO"; }
doctype: DOCTYPE_OPEN DOCTYPE_ROOT_TAG DOCTYPE_SYSTEM_AND_FILENAME DOCTYPE_CLOSE { $$ = "DOCTYPE"; } 

films: OPEN_FILMS CLOSE_OPENING newline film CLOSE_FILMS { System.out.println("HO TROVATO FILM DA SOLO"); }
       | OPEN_FILMS CLOSE_OPENING newline film CLOSE_FILMS newline films { System.out.println("HO TROVATO FILMS");}
%%

film: OPEN_FILM CLOSE_OPENING CLOSE_FILM { System.out.println("Questo è un film") }

  private Yylex lexer;


  private int yylex () {
    int yyl_return = -1;
    try {
      yylval = new ParserVal(0);
      yyl_return = lexer.yylex();
    }
    catch (IOException e) {
      System.err.println("IO error :"+e);
    }
    return yyl_return;
  }


  public void yyerror (String error) {
    System.err.println ("Error: " + error);
  }


  public Parser(Reader r) {
    lexer = new Yylex(r, this);
  }


  static boolean interactive;

  public static void main(String args[]) throws IOException {
    Parser yyparser;
    if ( args.length > 0 ) {
      // parse a file
      yyparser = new Parser(new FileReader(args[0]));
      yyparser.yyparse();
    }
    else {
      System.out.println("ERROR: Provide an input file as Parser argument");
    }
  } 
