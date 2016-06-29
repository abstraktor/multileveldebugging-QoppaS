data extraction
createErrorNodeFrom: aSmalltalkContextNode withChildren: aCollectionOfNodes
	| qoppaNode smalltalkContext errorMessage |
	qoppaNode := VirtualContextNode new.
	aCollectionOfNodes do: [:each | qoppaNode addChild: each].
	"aSmalltalkContextNode was added to aCollectionOfNodes by the sender"
	smalltalkContext := aSmalltalkContextNode contextPart.
	self flag: #hacky.
	errorMessage := smalltalkContext tempAt: smalltalkContext size - smalltalkContext arguments size + 1.
	qoppaNode summary: 'Qoppa error: ', errorMessage.
	qoppaNode group: (aSmalltalkContextNode group).
	qoppaNode at: #content put: nil.
	^ qoppaNode
	