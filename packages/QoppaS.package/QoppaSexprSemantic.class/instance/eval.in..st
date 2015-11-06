as yet unclassified
eval: expression in: env
	expression isSymbol
		ifTrue: [^(self lookup: expression in: env) cdr car].
	expression isCons
		ifTrue: [^self operate: (self eval: expression car in: env) on: expression cdr in: env ].
	^expression
	