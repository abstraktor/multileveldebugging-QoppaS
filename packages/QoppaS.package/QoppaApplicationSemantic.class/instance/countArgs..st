as yet unclassified
countArgs: aBlock
	"returns a block that takes one array of arguments for aBlock and checks the arity"

	^[:args | aBlock numArgs = args size
		ifTrue: [ aBlock valueWithArguments: args]
		ifFalse: [ Error signal: 'ArityMismatch for', aBlock]]