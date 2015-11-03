as yet unclassified
testParseEmptyList
	self assert: OrderedCollection new equals: 
		(self quoteFile: '()') first.