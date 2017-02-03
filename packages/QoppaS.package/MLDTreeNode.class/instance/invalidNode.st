as yet unclassified
invalidNode
	^self nodesDetect: [:node|
		
		((node children isSequenceable)
		
		"all nodes have to be tree nodes"
		and: [node isKindOf: self class]
		
		"the root has a nil root"
		and: [(self = node) or: [node root isKindOf: self class]])

			not "find those that _don't_ satisfy my conditions"
		]