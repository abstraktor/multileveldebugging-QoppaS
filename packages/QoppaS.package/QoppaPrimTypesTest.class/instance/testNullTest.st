as yet unclassified
testNullTest
	self assert: interpreter trueValue equals: (self readAndEvaluate: '(null? ''())').
	self assert: interpreter falseValue equals: (self readAndEvaluate: '(null? (cons 1 ''()))').