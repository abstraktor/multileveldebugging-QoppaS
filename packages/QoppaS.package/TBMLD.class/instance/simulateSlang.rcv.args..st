user interface
simulateSlang: primitiveIndex rcv: rcv args: arguments
	| cos |
	cos := CogVMSimulator newWithOptions: #(Cogit StackToRegisterMappingCogit "SimpleStackBasedCogit"
										ObjectMemory Spur32BitCoMemoryManager
										"ISA ARMv5" "ISA IA32").
	"cos initializeThreadSupport."
	cos desiredNumStackPages: 8.
	cos openOn: Smalltalk imageName.
	cos initStackPages.
	cos loadInitialContext.
	cos initPrimCall.
	cos pushInteger: rcv. 
	arguments collect: [:arg |
		arg isNumber
			ifTrue:  [cos pushInteger: arg]
			ifFalse: [Error signal]].
	cos dispatchOn: primitiveIndex in: (cos class primitiveTable).
	
	^cos successful
		ifFalse: [ 'failed with code ', cos primitiveFailureCode]
		ifTrue: [	cos objectMemory integerValueOf: cos stackTop].