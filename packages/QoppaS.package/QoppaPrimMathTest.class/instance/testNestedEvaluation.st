as yet unclassified
testNestedEvaluation
	self assert: 2 equals: (self eval: '(+ (- 3 2) 1)').