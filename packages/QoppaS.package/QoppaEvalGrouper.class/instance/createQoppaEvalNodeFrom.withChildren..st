as yet unclassified
createQoppaEvalNodeFrom: aSmalltalkContextNode withChildren: aCollectionOfContextNodes
	| qoppaNode expression |
	qoppaNode := VirtualContextNode new.
	expression := aSmalltalkContextNode contextPart arguments first.
	qoppaNode summary: 'Qoppa evaluation of ', expression qoppaPrintString.
	qoppaNode definitionContent: (Text fromString: expression qoppaPrintString).
	aCollectionOfContextNodes do: [:each | qoppaNode addChild: each].
	qoppaNode addChild: aSmalltalkContextNode.
	^ qoppaNode