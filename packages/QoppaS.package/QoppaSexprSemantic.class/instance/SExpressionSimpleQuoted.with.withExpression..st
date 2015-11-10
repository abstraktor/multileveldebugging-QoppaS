as yet unclassified
SExpressionSimpleQuoted: aNode with: x withExpression: expr
	^(self fexprValue: expr) isQuoted: true; yourself