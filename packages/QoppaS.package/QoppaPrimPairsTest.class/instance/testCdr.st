as yet unclassified
testCdr
	self assert: (OrderedCollection withAll: #('b' 'c')) equals: (self eval: '(cdr (a b c))')