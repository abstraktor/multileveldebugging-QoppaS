actions
compileActivation: activation toStream: stream stoppingAt: debugOpcodeIndices
	
	| methodOrDoitString optionsDictionaryOrArray tuple |
	activation isActualContextNode ifFalse: [^''].
	
	"this caching always fails because the activations are rebuild too often"
	^activation at: #cogitAssembly
		ifPresent: [:assembly| stream write: assembly]
		ifAbsentPut: [
	methodOrDoitString := activation contextPart method.
	optionsDictionaryOrArray := {
		#ObjectMemory. #Spur32BitCoMemoryManager.
		#debugOpcodeIndices. debugOpcodeIndices}.
	
			"methodOrDoitString isCompiledMethod ifFalse:
		[^StackToRegisterMappingCogit
			genAndDis: (Compiler new
							compiledMethodFor: methodOrDoitString
							in: nil
							to: nil
							notifying: nil
							ifFail: nil
							logged: false)
			 options: optionsDictionaryOrArray]."
	tuple := SimpleStackBasedCogit 
		cog: methodOrDoitString
		selectorOrNumCopied: methodOrDoitString selector
		options: optionsDictionaryOrArray.
	tuple second disassembleMethod: tuple last on: stream.

	stream contents asString].