as yet unclassified
detailsOf: activation
	| methodOrDoitString optionsDictionaryOrArray stream tuple |
	activation isActualContextNode ifFalse: [^''].
	
	"this caching always fails because the activations are rebuild too often"
	^activation at: #cogitAssembly ifAbsent: [
	methodOrDoitString := activation contextPart method.
	optionsDictionaryOrArray := #(ObjectMemory Spur32BitCoMemoryManager).
	
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
	stream := ReadWriteStream on: ''.
	tuple second disassembleMethod: tuple last on: stream.

	activation at: #cogitAssembly put: stream contents asString].