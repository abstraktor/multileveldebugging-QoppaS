as yet unclassified
SExpressionSimpleQuoted: aNode with: x withExpression: expr
	^(self fexprValue: expr) ifNotNilDo: [:value | value isQuoted: true; yourself]