as yet unclassified
testEqualNumbers
	self assert: interpreter trueValue equals: (self readAndEvaluate: '(= 1 1)').
	self assert: interpreter falseValue equals: (self readAndEvaluate: '(= 0 1)').