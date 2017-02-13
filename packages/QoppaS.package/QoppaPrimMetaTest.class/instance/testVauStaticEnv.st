as yet unclassified
testVauStaticEnv
	self assert: 3 equals: (self readAndEvaluate: '(((vau () _ +)) 1 2)')