verifiers
slangVerifyPrimitive: primitiveIndex rcv: receiver args: arguments
	simulator initPrimCall.
	self assert: receiver isNumber.
	simulator pushInteger: receiver. 
	arguments collect: [:arg |
		arg isNumber
			ifTrue:  [simulator pushInteger: arg]
			ifFalse: [Error signal]].
	simulator dispatchOn: primitiveIndex in: (simulator class primitiveTable).
	
	^{simulator successful
		ifFalse: [ 'failed with code ', simulator primitiveFailureCode]
		ifTrue: [	simulator objectMemory integerValueOf: simulator stackTop]}.