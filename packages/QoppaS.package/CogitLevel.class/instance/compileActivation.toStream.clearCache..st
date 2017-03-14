actions
compileActivation: activation toStream: stream clearCache: dontUseCache
	
	| methodOrDoitString optionsDictionaryOrArray tuple |
	activation isActualContextNode ifFalse: [^''].
	
	"this caching always fails because the activations are rebuild too often"
	^((activation includesKey: #cogitAssembly) and: [dontUseCache not])
		ifTrue: [stream write: (activation at: #cogitAssembly)]
		ifFalse: [
	methodOrDoitString := activation contextPart method.
	optionsDictionaryOrArray := {
		#ObjectMemory. #Spur32BitCoMemoryManager.
		"#debugOpcodeIndices. debugOpcodeIndices"}.
	
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