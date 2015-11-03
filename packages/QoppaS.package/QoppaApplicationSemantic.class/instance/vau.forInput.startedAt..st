as yet unclassified
vau: args forInput: interval startedAt: position
	| envName implementation params |
	1 halt.
	params := args first.
	envName := args second.
	implementation := args third.
	^OhmNode
		newNamed: 'Vau'
		forGrammar: self grammar
		andInput: interval
		startedAt: position
		withChildren: implementation.