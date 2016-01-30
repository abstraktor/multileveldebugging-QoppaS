as yet unclassified
testVauDynamicEnv
	| env |
	env := self operate: '((vau (x) env env) 1)'.
	self assert: (env isCons and: [env isProperList]).
	self assert: 2 equals: env size
		description: 'dynamic environment should contain its call frame and the global environment'.
	self assertPlusIsInFrame: env last