as yet unclassified
testParseComment
	self flag: #split.
	self assert: 5 equals: (self readAndEvaluate: '(+ 1 2)
		;hi there
		(+ 2 3)')