toolbuilder
contentNodeLabelOf: aParserNode
	| stream |
	stream := WriteStream on: (String new: 1000).
	(aParserNode pc ~= 0) ifTrue: [
		stream nextPutAll: aParserNode pc asString; nextPutAll: ' '].
	
	stream print: aParserNode class; nextPutAll:': '.
	
	stream nextPutAll: ((aParserNode asString
			copyReplaceTokens: String cr with: String space)
			copyReplaceTokens: String tab with: String space)
			allButFirst allButLast.
		
	^stream contents