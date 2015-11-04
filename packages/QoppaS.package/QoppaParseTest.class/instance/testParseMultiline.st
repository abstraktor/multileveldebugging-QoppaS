as yet unclassified
testParseMultiline
	self assert: (OrderedCollection withAll: #('+' 2 3)) equals: 
		(self evalFile: '
			(+ 1 a b c)
			
			(+ 2 3)') second.