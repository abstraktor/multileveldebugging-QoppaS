as yet unclassified
children: activation
	| children selector primitiveSimulationMethod |
	activation basicHasChildren ifTrue: [^activation basicChildren ].
	
	children := super children: activation.

	Interpreter initializePrimitiveTable.
	selector := Interpreter primitiveTable at: ((activation at: #primitive:) at: 1)+1.
	primitiveSimulationMethod := InterpreterPrimitives lookupSelector: selector.
	
	children last addChild: (VirtualContextNode new
		root: children last;
		definitionContent: (primitiveSimulationMethod getSource);
		group: self;
		at: #viewer put: #smalltalk;
		summary: selector,'.slang';
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
	
	^children