as yet unclassified
SExpressionSimpleQuoted: aNode with: x withExpression: expr
	^(self fexprSemantic value: expr) isQuoted: true; yourself