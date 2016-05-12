data extraction
fill: aQoppaContextNode
	| operateContextPart operative |
	operateContextPart := aQoppaContextNode at: #operateSmalltalkContext.
	operative := operateContextPart arguments first.
	aQoppaContextNode definitionContent: (self sourceFor: operative in: aQoppaContextNode).
	self fillDataHolders: aQoppaContextNode.