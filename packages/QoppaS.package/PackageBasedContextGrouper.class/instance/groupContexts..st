as yet unclassified
groupContexts: aStackOfContexts
	| contextsAsNodes |
	contextsAsNodes := aStackOfContexts collectWithIndex: [:each :i | ContextNodePrototype for: each atIndex: i]..
	^ self groupNodes: contextsAsNodes  