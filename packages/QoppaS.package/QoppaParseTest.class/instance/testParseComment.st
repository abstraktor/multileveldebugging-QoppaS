as yet unclassified
testParseComment
	self assert: (OrderedCollection withAll: #('+' 2 3)) equals: 
		(self quoteFile: '
		(+ 1 2)
		;hi there
		(+ 2 3)') second.