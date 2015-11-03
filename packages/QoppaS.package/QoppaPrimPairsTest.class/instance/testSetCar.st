as yet unclassified
testSetCar
	self assert: (OrderedCollection withAll: #('d' 'b' 'c')) equals: (self eval: '(set-car! (a b c) d)')