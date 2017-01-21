/* Is this way of printing to out fine? */
/* In the makefile, the scanner keyword for executing doesn't seem to work */

import java_cup.runtime.*;

%%

%class lex_scanner
%line
%column
%unicode
%standalone

Identifier = [:jletter:] [:jletterdigit:]*

%%
[\(] {System.out.println("LPAREN " + yytext());}
[\)] {System.out.println("RPAREN " + yytext());}

[a-zA-Z0-9_] {System.out.println("IDENT " + yytext());}
[.!?,:;] { System.out.println("PUNC " + yytext()); }
