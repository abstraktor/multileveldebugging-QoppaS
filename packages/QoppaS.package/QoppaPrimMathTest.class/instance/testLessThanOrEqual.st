as yet unclassified
testLessThanOrEqual
	self assert: true equals: (self eval: '(<= 1 1)').
	self assert: true equals: (self eval: '(<= 0 1)').
	self assert: false equals: (self eval: '(<= 1 0)').