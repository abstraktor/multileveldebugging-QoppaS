as yet unclassified
testBool
	self assert: 1 equals: (self readAndEvaluate: '(bool #t 1 2)').
	self assert: 2 equals: (self readAndEvaluate: '(bool #f 1 2)').