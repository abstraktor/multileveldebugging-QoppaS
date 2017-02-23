as yet unclassified
evaluatePrimitive
		| optionsDictionaryOrArray tuple primitiveSimulationMethod selector stream |
	selector := Interpreter primitiveTable at: primitiveIndex+1.
	primitiveSimulationMethod := InterpreterPrimitives lookupSelector: selector.
	optionsDictionaryOrArray := {
		#ObjectMemory. #Spur32BitCoMemoryManager}.
	
	tuple := SimpleStackBasedCogit 
		cog: primitiveSimulationMethod
		selectorOrNumCopied: selector
		options: optionsDictionaryOrArray.
	stream := WriteStream on: (String new: 1000).
	tuple second disassembleMethod: tuple last on: stream.