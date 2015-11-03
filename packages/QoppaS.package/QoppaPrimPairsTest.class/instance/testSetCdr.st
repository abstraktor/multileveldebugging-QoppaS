as yet unclassified
testSetCdr
	self assert: (OrderedCollection withAll: #('a' 'd')) equals: (self eval: '(set-cdr! (a b c) d)')