as yet unclassified
testPairTest
	self assert: qoppa trueValue equals: (self operate: '(pair? (cons 1 (cons 2 ''())))').
	self assert: qoppa falseValue equals: (self operate: '(pair? ''())').