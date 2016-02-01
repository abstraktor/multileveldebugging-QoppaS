as yet unclassified
testNestedEvaluation
	self assert: 2 equals: (self readAndEvaluate: '(+ (- 3 2) 1)').