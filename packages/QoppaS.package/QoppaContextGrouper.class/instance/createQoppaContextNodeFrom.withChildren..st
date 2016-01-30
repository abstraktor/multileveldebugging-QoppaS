as yet unclassified
createQoppaContextNodeFrom: aSmalltalkContextNode withChildren: aCollectionOfContextNodes
	| qoppaNode |
	qoppaNode := VirtualContextNode new.
	aCollectionOfContextNodes do: [:each | qoppaNode addChild: each].
	qoppaNode addChild: aSmalltalkContextNode.
	qoppaNode at: #isQoppaContext put: true.
	qoppaNode at: #operateSmalltalkContext put: aSmalltalkContextNode contextPart.
	self fillDataHolders: qoppaNode.
	^ qoppaNode