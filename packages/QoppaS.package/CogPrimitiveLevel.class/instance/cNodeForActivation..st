activations
cNodeForActivation: activation
	| primitiveSimulationMethod selector |
	selector := Interpreter primitiveTable at: ((activation at: #primitive:) at: 1)+1.
	primitiveSimulationMethod := InterpreterPrimitives lookupSelector: selector.

	^(VirtualContextNode new
		root: activation;
		definitionContent: ((CCodeGenerator new 
			initialize addClass: (primitiveSimulationMethod methodClass))
			cCodeForMethod: selector) withBlanksTrimmed;
		group: self;
		at: #viewer put: #c;
		summary: selector,'.c';
		yourself)