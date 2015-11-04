as yet unclassified
testLessThanOrEqual
	self assert: true equals: (self operate: '(<= 1 1)').
	self assert: true equals: (self operate: '(<= 0 1)').
	self assert: false equals: (self operate: '(<= 1 0)').