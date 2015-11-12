as yet unclassified
ListList: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	| exprs |
	expressionsNode children ifEmpty: [^nil].
	exprs := QoppaWCons newListFrom: (expressionsNode children collect: [:exp | self fexprValue: exp]).
	^self inFExpr
		ifTrue: [exprs]
		ifFalse: [self eval: exprs in: self environment]