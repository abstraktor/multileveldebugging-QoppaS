as yet unclassified
children: activation
	| children selector primitiveSimulationMethod |
	activation basicHasChildren ifTrue: [^activation basicChildren ].
	children := OrderedCollection new.
	Interpreter initializePrimitiveTable.
	selector := Interpreter primitiveTable at: ((activation at: #primitive:) at: 1)+1.
	primitiveSimulationMethod := InterpreterPrimitives methodDict at: selector.
	
	children add: (VirtualContextNode new
		root: activation;
		definitionContent: (primitiveSimulationMethod getSource);
		group: self;
		at: #viewer put: #smalltalk;
		summary: selector,'.slang';
		yourself).
	
	children last addChild: (VirtualContextNode new
		root: children last;
		definitionContent: (primitiveSimulationMethod symbolic asText);
		group: self;
		at: #viewer put: #bytes;
		summary: selector,'.bytes';
		yourself).
		
	children last children last addChild: (VirtualContextNode new
		root: children last children last;
		definitionContent: ((CCodeGenerator new 
			initialize addClass: (primitiveSimulationMethod methodClass))
			cCodeForMethod: selector) withBlanksTrimmed;
		group: self;
		at: #viewer put: #c;
		summary: selector,'.c';
		yourself).
		
	children last children last children last addChild: (VirtualContextNode new
		definitionContent: ([:methodOrDoitString :optionsDictionaryOrArray|| tuple stream |
	methodOrDoitString isCompiledMethod ifFalse:
		[^StackToRegisterMappingCogit
			genAndDis: (Compiler new
							compiledMethodFor: methodOrDoitString
							in: nil
							to: nil
							notifying: nil
							ifFail: nil
							logged: false)
			 options: optionsDictionaryOrArray].
			tuple := StackToRegisterMappingCogit 
				cog: methodOrDoitString
				selectorOrNumCopied: methodOrDoitString selector
				options: optionsDictionaryOrArray.
			stream := ReadWriteStream on: ''.
			tuple second disassembleMethod: tuple last on: stream.
			stream contents asString withBlanksTrimmed ] value: primitiveSimulationMethod value: #());
		group: self;
		at: #viewer put: #cogit;
		summary: selector,'.cogit';
		yourself).
	
	^children