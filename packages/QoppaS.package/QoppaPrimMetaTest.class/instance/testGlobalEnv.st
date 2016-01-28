as yet unclassified
testGlobalEnv
	| globalEnv firstScope |
	globalEnv := self operate: 'global-env'.
	self assert: (globalEnv isCons and: [globalEnv isProperList]).
	self assert: globalEnv size = 1 description: 'global env should not have subscopes'.
	firstScope := globalEnv car.
	self assertPlusIsInFrame: firstScope.