as yet unclassified
verifyPrimitive: primitiveIndex rcv: receiver args: arguments
	"runs the given primitive on multiple verifiers and returns true iff the results were all equal"
	self reset.
	
	self verifiers do: [:verifier|| result |
		result := verifier verifyPrimitive: primitiveIndex rcv: receiver args: arguments.
		result isCollection
			ifTrue: [results addAll: result]
			ifFalse: [results add: result]].

	resultsPrimitiveIndex := primitiveIndex.
	resultsReceiver := receiver.
	resultsArguments := arguments.

	self updateResults.

	^self resultsAreValid