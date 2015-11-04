as yet unclassified
testParseMultiline
	self assert: 5 equals: 
		(self operateFile: '
			(+ 1 3 4 5)
			
			(+ 2 3)') second.