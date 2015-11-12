as yet unclassified
testBool
	self assert: 1 equals: (self operate: '(bool #t 1 2)').
	self assert: 2 equals: (self operate: '(bool #f 1 2)').