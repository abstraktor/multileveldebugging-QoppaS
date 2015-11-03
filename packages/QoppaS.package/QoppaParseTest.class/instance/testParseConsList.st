as yet unclassified
testParseConsList
	self assert: 'cons' equals: (self quote: '(cons (1 a b c))') first.
	self assert: (OrderedCollection withAll: #(1 'a' 'b' 'c'))  equals: (self quote: '(cons (1 a b c))') second.