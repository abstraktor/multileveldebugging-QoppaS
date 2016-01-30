as yet unclassified
testEqualNumbers
	self assert: qoppa trueValue equals: (self operate: '(= 1 1)').
	self assert: qoppa falseValue equals: (self operate: '(= 0 1)').