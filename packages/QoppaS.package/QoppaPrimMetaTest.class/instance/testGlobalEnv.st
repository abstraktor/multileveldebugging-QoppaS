as yet unclassified
testGlobalEnv
	| globalEnv firstScope |
	globalEnv := self readAndEvaluate: 'global-env'.
	self assert: (globalEnv isCons and: [globalEnv isProperList]).
	self assert: globalEnv size = 1 description: 'global env should not have subscopes'.
	firstScope := globalEnv car.
	self assertPlusIsInFrame: firstScope.