as yet unclassified
groupContexts: aStackOfContexts
	| contextsAsNodes |
	contextsAsNodes := aStackOfContexts collect: [:each | ContextNodePrototype for: each].
	^ self groupNodes: contextsAsNodes  