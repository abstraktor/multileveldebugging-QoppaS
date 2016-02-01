as yet unclassified
testOperate
	self assert: 3 equals: (self readAndEvaluate: '(operate ''() + ''(1 2))').