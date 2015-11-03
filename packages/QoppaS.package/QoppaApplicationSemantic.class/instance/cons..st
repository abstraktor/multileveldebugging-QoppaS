as yet unclassified
cons: args
	args ifEmpty: [^OrderedCollection new].
	^OrderedCollection withAll: args