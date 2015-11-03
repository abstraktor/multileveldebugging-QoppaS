as yet unclassified
setCar: args
	| res |
	res := args first allButFirst.
	res addFirst: args second.
	^res