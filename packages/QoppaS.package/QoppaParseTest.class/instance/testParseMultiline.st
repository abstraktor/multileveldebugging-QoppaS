as yet unclassified
testParseMultiline
	self assert: (OrderedCollection withAll: #('+' 2 3)) equals: 
		(self quoteFile: '
			(+ 1 a b c)
			
			(+ 2 3)') second.