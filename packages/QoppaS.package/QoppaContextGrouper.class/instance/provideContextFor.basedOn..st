as yet unclassified
provideContextFor: aQoppaContextNode basedOn: aSmalltalkContextNodeForEval
	| evalContextPart expression |
	evalContextPart := aSmalltalkContextNodeForEval contextPart.
	aQoppaContextNode at: #evalSmalltalkContext put: evalContextPart.
	expression := evalContextPart arguments first.
	aQoppaContextNode summary: 'Qoppa: ', expression qoppaPrintString.
	aQoppaContextNode definitionContent: (Text fromString: expression qoppaPrintString).