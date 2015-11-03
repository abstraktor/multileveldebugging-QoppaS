as yet unclassified
testCons
	self assert: ((OrderedCollection withAll: #('a')) add: (OrderedCollection withAll: #('b' 'c')); yourself) equals: (self eval: '(cons a (b c))').
	self assert: (OrderedCollection withAll: #('a')) equals: (self eval: '(cons a)').