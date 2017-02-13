as yet unclassified
testPairTest
	self assert: interpreter trueValue equals: (self readAndEvaluate: '(pair? (cons 1 (cons 2 ''())))').
	self assert: interpreter falseValue equals: (self readAndEvaluate: '(pair? ''())').