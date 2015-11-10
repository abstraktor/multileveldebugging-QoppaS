as yet unclassified
SExpressionSimpleQuoted: aNode with: x withExpression: expr
	^(self value: expr) isQuoted: true; yourself