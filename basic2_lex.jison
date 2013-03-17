/* description: Basic grammar that contains a nullable A nonterminal. */

%lex
%%

\s+               {/* skip whitespace */}
[;]               { return 'sep'; }
[=]               { return 'equal'; }
\d+               { return 'num'; }
[a-zA-Z_]\w*      { return 'id'; }

/lex

%%

S   : A
           { 
           console.log(result);
           return result;
           }
    ;
A   : /* empty */  
           
    | id equal num sep A
            {  
              result[$1] = $3;
            }
    ;

%%

var result = {};
