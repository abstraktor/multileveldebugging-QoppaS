as yet unclassified
cons: args
	| res |
	args ifEmpty: [^OrderedCollection new].
	res := OrderedCollection with: args first.
	res addAll: args second.
	^res