as yet unclassified
testEqualNumbers
	self assert: true equals: (self operate: '(= 1 1)').
	self assert: false equals: (self operate: '(= 0 1)').