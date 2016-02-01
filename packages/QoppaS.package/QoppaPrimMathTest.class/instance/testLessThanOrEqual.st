as yet unclassified
testLessThanOrEqual
	self assert: interpreter trueValue equals: (self readAndEvaluate: '(<= 1 1)').
	self assert: interpreter trueValue equals: (self readAndEvaluate: '(<= 0 1)').
	self assert: interpreter falseValue equals: (self readAndEvaluate: '(<= 1 0)').