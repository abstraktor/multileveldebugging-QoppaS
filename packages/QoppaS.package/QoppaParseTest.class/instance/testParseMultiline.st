as yet unclassified
testParseMultiline
	self flag: #split.
	self assert: 5 equals: 
		(self readAndEvaluate: '
			(+ 1 3 4 5)
			
			(+ 2 3)')