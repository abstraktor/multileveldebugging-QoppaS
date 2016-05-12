as yet unclassified
createQoppaEvalNodeFrom: aSmalltalkContextNode withChildren: aCollectionOfContextNodes
	| qoppaNode expression environment |
	qoppaNode := VirtualContextNode new.
	expression := aSmalltalkContextNode contextPart arguments first.
	environment := aSmalltalkContextNode contextPart arguments second.
	qoppaNode summary: 'Qoppa evaluation of ', expression qoppaPrintString.
	qoppaNode definitionContent: (Text fromString: expression qoppaPrintString).
	qoppaNode dataHolders: (self collectBindingsFromEnvironment: environment).
	aCollectionOfContextNodes do: [:each | qoppaNode addChild: each].
	qoppaNode addChild: aSmalltalkContextNode.
	^ qoppaNode