as yet unclassified
children: activation
	| children leftDefinitionContent leftDefinitionSelection leftDefinitionSelectionStart |
	activation basicHasChildren ifTrue: [^activation basicChildren ].
	children := OrderedCollection new.
	
	activation isSmalltalkContext ifFalse: [^children].
	
	leftDefinitionContent := activation contextPart method symbolic asText.
	
	leftDefinitionSelectionStart := 1+ (leftDefinitionContent asString findString: (String cr, activation contextPart pc)).
	leftDefinitionSelection := (leftDefinitionSelectionStart to: (
		leftDefinitionContent asString findString: (String cr) startingAt: (leftDefinitionSelectionStart))).

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
		at: #leftDefinitionContent put: leftDefinitionContent;
		at: #leftDefinitionSelection put: leftDefinitionSelection;
		variables: ((((1 to: activation contextPart size) collect: [:i| i asString -> (activation contextPart at: i)]) copyWith: (#stackp -> activation contextPart stackPtr)) copyWith: (#pc -> activation contextPart pc));
		summary: (activation contextPart selector),'.bytes.cogit';
		yourself).
		
	^children