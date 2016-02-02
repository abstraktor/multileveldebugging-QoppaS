data extraction
createQoppaContextNodeFrom: contextCons withChildren: aCollectionOfContextNodes
	| qoppaNode aSmalltalkContextNode |
	aSmalltalkContextNode := contextCons car.
	qoppaNode := VirtualContextNode new.
	aCollectionOfContextNodes do: [:each | qoppaNode addChild: each].
	qoppaNode addChild: aSmalltalkContextNode.
	qoppaNode at: #isQoppaContext put: true.
	qoppaNode at: #operateSmalltalkContext put: aSmalltalkContextNode contextPart.
	self fill: qoppaNode.
	^ qoppaNode