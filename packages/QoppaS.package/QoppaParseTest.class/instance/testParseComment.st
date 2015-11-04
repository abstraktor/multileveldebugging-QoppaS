as yet unclassified
testParseComment
	self assert: 5 equals: (self operateFile: '(+ 1 2)
		;hi there
		(+ 2 3)') second.