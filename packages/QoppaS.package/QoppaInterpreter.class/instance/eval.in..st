interpreting
eval: expression in: env
	expression isNumber
		ifTrue: [^expression].
	expression isQuoted
		ifTrue: [^expression].
	expression isQoppaWSymbol
		ifTrue: [^(self lookup: expression in: env) cdr car].
	expression isCons
		ifTrue: [lastEvaluatedForm := expression.
			^self operate: (self eval: expression car in: env)
					on: expression cdr
					in: env ].
	^expression
	