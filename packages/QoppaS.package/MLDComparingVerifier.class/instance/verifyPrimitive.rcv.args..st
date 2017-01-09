as yet unclassified
verifyPrimitive: primitiveIndex rcv: receiver args: arguments
	"runs the given primitive on multiple verifiers and returns true iff the results were all equal"
	self reset.
	results
		at: #vm put: (self vmVerifyPrimitive: primitiveIndex rcv: receiver args: arguments);
		at: #fb put: (self fbVerifyPrimitive: primitiveIndex rcv: receiver args: arguments);
		at: #slang put: (self slangVerifyPrimitive: primitiveIndex rcv: receiver args: arguments).
	
	resultsPrimitiveIndex := primitiveIndex.
	resultsReceiver := receiver.
	resultsArguments := arguments.

	^self resultsAreValid