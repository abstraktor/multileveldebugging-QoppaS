as yet unclassified
children: activation
	| children |
	activation basicHasChildren ifTrue: [^activation basicChildren ].
	children := OrderedCollection new.
	
	activation isSmalltalkContext ifFalse: [^children].

	children add: (VirtualContextNode new
		definitionContent: ([:methodOrDoitString :optionsDictionaryOrArray|| tuple stream |
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
			tuple := StackToRegisterMappingCogit 
				cog: methodOrDoitString
				selectorOrNumCopied: methodOrDoitString selector
				options: optionsDictionaryOrArray.
			stream := ReadWriteStream on: ''.
			tuple second disassembleMethod: tuple last on: stream.
			stream contents asString withBlanksTrimmed ] value: activation contextPart method value: #(ObjectMemory Spur32BitCoMemoryManager));
		group: self;
		root: activation;
		at: #viewer put: #cogit;
		at: #leftDefinitionContent put: (activation contextPart method symbolic asText);
		summary: (activation contextPart selector),'.bytes.cogit';
		yourself).
		
	^children