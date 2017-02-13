grouping
flushCollectedNodes
	"Return cons list of all collected nodes and clear the collection"
	| result |
	result := collectedNodes cdr.
	collectedNodes cdr: nil.
	collectedNodesLastCons := collectedNodes.
	^ result