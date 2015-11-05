as yet unclassified
eval: expression in: env
	expression isSymbol
		ifTrue: [^(self lookup: expression in: env) second].
	expression isCollection
		ifTrue: [^self operate: expression first on: expression allButFirst in: env ].
	^expression
	