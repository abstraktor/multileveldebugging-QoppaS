as yet unclassified
setCdr: args
	| res |
	res := OrderedCollection newFrom: {args first first}.
	res addLast: args second.
	^res