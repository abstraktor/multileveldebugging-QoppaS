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
		summary: selector,'.slang';
		yourself).
	
	children last addChild: (VirtualContextNode new
		root: children last;
		definitionContent: (primitiveSimulationMethod symbolic asText);
		group: self;
		summary: selector,'.bytes';
		yourself).
		
	children last children last addChild: (VirtualContextNode new
		root: children last children last;
		definitionContent: ((CCodeGenerator new 
			initialize addClass: (primitiveSimulationMethod methodClass))
			cCodeForMethod: selector);
		group: self;
		summary: selector,'.c';
		yourself).
	
	^children