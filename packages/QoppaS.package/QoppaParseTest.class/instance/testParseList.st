as yet unclassified
testParseList
	self assert: (OrderedCollection withAll: #('+' 1 'a' 'b' 'c')) equals: (self quote: '(+ 1 a b c)').