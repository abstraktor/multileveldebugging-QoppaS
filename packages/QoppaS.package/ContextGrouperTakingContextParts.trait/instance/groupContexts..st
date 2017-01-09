as yet unclassified
groupContexts: aStackOfContexts
	| contextsAsNodes |
	contextsAsNodes := aStackOfContexts collectWithIndex: [:each :i | ActualContextNode for: each atIndex: i].
	^ self groupNodes: contextsAsNodes  