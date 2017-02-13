as yet unclassified
initialize
	simulator := CogVMSimulator newWithOptions: #(Cogit StackToRegisterMappingCogit "SimpleStackBasedCogit"
										ObjectMemory Spur32BitCoMemoryManager
										"ISA ARMv5" "ISA IA32").
	"simulator initializeThreadSupport."
	simulator desiredNumStackPages: 8.
	simulator openOn: Smalltalk imageName.
	
	"should we run headless?"
	true
		ifTrue: [simulator initStackPages.
				simulator loadInitialContext.
				"simulator cogit assertCStackWellAligned."
				simulator cogit generateStackPointerCapture.
				simulator primitiveFunctionPointer: 0.]
		ifFalse: [simulator openAsMorph; run]