as yet unclassified
testNullTest
	self assert: qoppa trueValue equals: (self operate: '(null? ''())').
	self assert: qoppa falseValue equals: (self operate: '(null? (cons 1 ''()))').