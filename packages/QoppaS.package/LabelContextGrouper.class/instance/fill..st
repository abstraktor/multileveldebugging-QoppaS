data extraction
fill: aQoppaContextNode
	| operateContextPart operative env operands |
	operateContextPart := aQoppaContextNode at: #operateSmalltalkContext.
	operative := operateContextPart arguments first.
	operands := operateContextPart arguments second.
	env := operateContextPart arguments third.
	aQoppaContextNode at: #operative put: operative.
	aQoppaContextNode at: #operands put: operands.
	aQoppaContextNode at: #env put: env.
	aQoppaContextNode definitionContent: (self sourceFor: operative in: aQoppaContextNode).
	self fillDataHolders: aQoppaContextNode.