%{
open Ast;;
%}

/* Declare your tokens here. */
%token EOF
%token <Range.t * int32> INT
%token <Range.t> X        		/* X */
%token <Range.t * string> INT_CONST 		/* c */
%token <Range.t> UN_BIT_NOT		/* ~ */
%token <Range.t> BIN_BIT_AND	/* & */
%token <Range.t> BIN_BIT_OR		/* | */
%token <Range.t> LPAREN   		/* ( */
%token <Range.t> RPAREN   		/* ) */
%token <Range.t> BIN_ADD		/* + */
%token <Range.t> MINUS		/* - */
%token <Range.t> BIN_MUL		/* * */
%token <Range.t> BIN_EQUAL		/* == */
%token <Range.t> BIN_NOTEQUAL	/* != */
%token <Range.t> BIN_LSHIFT		/* << */
%token <Range.t> BIN_ARSHIFT	/* >>*/
%token <Range.t> BIN_LRSHIFT	/* >>>*/
%token <Range.t> BIN_LT			/* > */
%token <Range.t> BIN_LTE		/* >= */
%token <Range.t> BIN_GT			/* < */
%token <Range.t> BIN_GTE		/* <= */
%token <Range.t> UN_NOT			/* ! */




/* ---------------------------------------------------------------------- */
%start toplevel
%type <Ast.exp> toplevel
%type <Ast.exp> exp
%%

toplevel:
	| exp EOF { $1 }

/* Declare your productions here, starting with 'exp'. */

exp:
	| B1 { $1 }
  
B1:
	| B2 BIN_BIT_OR B1 { Binop (Or, $1, $3) }
	| B2 { $1 }

B2: 
	| B3 BIN_BIT_AND B2 { Binop (And, $1, $3) }
	| B3 { $1 }
	
B3: 
	| B4 BIN_EQUAL B3 { Binop (Eq, $1, $3) }
	| B4 BIN_NOTEQUAL B3 { Binop (Neq, $1, $3) }
	| B4 { $1 }
	
B4: 
	| B5 BIN_LT B4 { Binop (Lt, $1, $3) }
	| B5 BIN_LTE B4 { Binop (Lte, $1, $3) }
	| B5 BIN_GT B4 { Binop (Gt, $1, $3) }
	| B5 BIN_GTE B4 { Binop (Gte, $1, $3) }
	| B5 { $1 }

B5: 
	| B6 BIN_LSHIFT B5 { Binop (Shl, $1, $3) }
	| B6 BIN_ARSHIFT B5 { Binop (Sar, $1, $3) }
	| B6 BIN_LRSHIFT B5 { Binop (Shr, $1, $3) }
	| B6 { $1 }
	
B6: 
	| B6 BIN_ADD B7 { Binop (Plus, $1, $3) }
	| B6 MINUS B7 { Binop (Minus, $1, $3) }
	| B7 { $1 }

B7: 
	| B7 BIN_MUL B8 { Binop (Times, $1, $3) }
	| B8 { $1 }

B8: 
	| UN_NOT B8 { Unop (Lognot, $2) }
	| UN_BIT_NOT B8 { Unop (Not, $2) }
	| MINUS B8 { Unop (Neg, $2) }
	| B9 { $1 }
	
B9:
	| X   { Arg }
	| INT { Cint (snd $1) }
	| LPAREN B1 RPAREN { $2 }
	
  
 
