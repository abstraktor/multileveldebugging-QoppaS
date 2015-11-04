as yet unclassified
testOperate
	self assert: 3 equals: (self operate: '(operate () ''+ (cons 1(cons 2 ())))').