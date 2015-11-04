as yet unclassified
testParseEmptyList
	self assert: OrderedCollection new equals: 
		(self evalFile: '()') first.