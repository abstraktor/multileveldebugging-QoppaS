as yet unclassified
ListExplicitCdr: aNode parenOpen: x carExpressions: carExpressions dot: d cdrExpression: cdrExpression parenClose: xx
	^(Cons newListFrom: (carExpressions children collect: [:exp | self value: exp]))
		cdr: (self value: cdrExpression);
		yourself.