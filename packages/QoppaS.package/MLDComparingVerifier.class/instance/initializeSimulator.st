as yet unclassified
initializeSimulator
	simulator := CogVMSimulator newWithOptions: #(Cogit StackToRegisterMappingCogit "SimpleStackBasedCogit"
										ObjectMemory Spur32BitCoMemoryManager
										"ISA ARMv5" "ISA IA32").
	"simulator initializeThreadSupport."
	simulator desiredNumStackPages: 8.
	simulator openOn: Smalltalk imageName.
	simulator initStackPages.
	simulator loadInitialContext.