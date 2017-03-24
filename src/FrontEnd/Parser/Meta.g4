grammar Meta;
//程序
program
	:   (functionDeclaration | classDeclaration | variableDeclaration)+
	;
//函数定义
functionDeclaration
	:   (type | 'void') Identifier '(' (type Identifier (',' type Identifier)*)? ')' blockStatement
	;
//类定义
classDeclaration
	:   'class' Identifier '{' (variableDeclaration | functionDeclaration)* '}'
	;
//块注释
BlockComment
	:   '/*' .*? '*/' -> skip
	;
//行注释
LineComment
	:   '//' ~[\n\r]* -> skip
	;
//空白字符
BlankCharacter
	:   [ \t\n\r]+ -> skip
	;
//整数
Integer
	:   [0-9]+
	;
//字符串
String
	:   '\"' (ESC | .)*? '\"'
	;
fragment ESC
	:   '\\' [bntr"\\]
	;
//标识符
Identifier
	:   [a-zA-Z_][a-zA-Z0-9_]*
	;
//类型 (exclude 'void')
type
	:   'int'
		#Integer_Type
	|   'string'
		#String_Type
	|   'bool'
		#Bool_Type
	|   Identifier
		#Class_Type
	|   type '[' ']'
		#Array_Type
	;
//常量
constant
	:   'null'
		#Null_Constant
	|   ('true' | 'false')
		#Bool_Constant
	|   String
		#String_Constant
	|   Integer
		#Integer_Constant
	;
//语句
statement
	:   blockStatement
	|   expressionStatement
	|   variableDeclaration
	|   ifStatement
	|   forStatement
	|   whileStatement
	|   continueStatement
	|   breakStatement
	|   returnStatement
	;
//块语句
blockStatement
	:   '{' statement* '}'
	;//表达式语句
expressionStatement
	:   expression? ';'
	;
//变量定义(语句)
variableDeclaration
	:   type Identifier ('=' expression)? ';'
	;
//if判断语句
ifStatement
	:   'if' '(' expression ')' statement ('else' statement)?
	;
//for循环语句
forStatement
	:   'for' '(' expression? ';' expression? ';' expression? ')' statement
	;
//while循环语句
whileStatement
	:   'while' '(' expression? ')' statement
	;
//continue语句
continueStatement
	:   'continue' ';'
	;
//break语句
breakStatement
	:   'break' ';'
	;
//return语句
returnStatement
	:   'return' expression? ';'
	;
//表达式
expression
	:   constant
		#Constant_Expression
	|   Identifier
		#Identifier_Expression
	|   'New' type ('[' expression ']')* ('[' ']')*
		#Creation_Expression
	|   '(' expression ')'
		#Subgroup_Expression
	|   expression '(' (expression (',' expression)*)? ')'
		#Function_Expression
	|   expression '[' expression ']'
		#Array_Expression
	|   expression '.' (Identifier | expression '(' (expression (',' expression)*)? ')')
		#Member_Expression
	|   expression op=('++' | '--')
		#Suffix_Expression
	|   op=('+' | '-' | '~' | '!' | '++' | '--') expression
		#Prefix_Expression
	|   expression op=('*' | '/' | '%') expression
		#Mul_Div_Mod_Expression
	|   expression op=('+' | '-') expression
		#Add_Sub_Expression
	|   expression op=('<<' | '>>') expression
		#Shift_Expression
	|   expression op=('<' | '>' | '<=' | '>=') expression
		#Relation_Expression
	|   expression op=('==' | '!=') expression
		#Equality_Expression
	|   expression '&' expression
		#Bit_And_Expression
	|   expression '^' expression
		#Bit_Xor_Expreeeion
	|   expression '|' expression
		#Bit_or_Expression
	|   expression '&&' expression
		#Logical_And_Expression
	|   expression '||' expression
		#Logical_Or_Expression
	|   <assoc=right> expression '=' expression
		#Assignment_Expression
	;

