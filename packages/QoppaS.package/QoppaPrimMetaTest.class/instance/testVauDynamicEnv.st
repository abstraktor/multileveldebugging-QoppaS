as yet unclassified
testVauDynamicEnv
	| env |
	env := self readAndEvaluate: '((vau (x) env env) 1)'.
	self assert: (env isCons and: [env isProperList]).
	self assert: 1 equals: env size
		description: 'dynamic environment should not contain the call frame, but only the parent frames (here only the global environment)'.
	self assertPlusIsInFrame: env last