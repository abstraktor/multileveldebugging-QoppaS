as yet unclassified
children: activation
	| children selector primitiveSimulationMethod |
	children := OrderedCollection new.
	selector := Interpreter primitiveTable at: ((activation at: #primitive:) at: 1)+1.
	primitiveSimulationMethod := InterpreterPrimitives methodDict at: selector.
	
	children add: (VirtualContextNode new
		root: activation;
		definitionContent: ((CCodeGenerator new 
			initialize addClass: (primitiveSimulationMethod methodClass))
			cCodeForMethod: selector);
		group: self;
		summary: selector,'.c';
		yourself).
	
	children add: (VirtualContextNode new
		root: activation;
		definitionContent: (primitiveSimulationMethod symbolic asText);
		group: self;
		summary: selector,'.bytes';
		yourself).
	
	children add: (VirtualContextNode new
		root: activation;
		definitionContent: (primitiveSimulationMethod getSource);
		group: self;
		summary: selector,'.slang';
		yourself).
	
	^children