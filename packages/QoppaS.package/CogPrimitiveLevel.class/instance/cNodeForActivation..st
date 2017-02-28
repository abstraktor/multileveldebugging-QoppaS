activations
cNodeForActivation: activation
	| primitiveSimulationMethod selector |
	selector := Interpreter primitiveTable at: ((activation root at: #primitive:) at: 1)+1.
	primitiveSimulationMethod := (InterpreterPrimitives lookupSelector: selector)
		ifNil: [StackInterpreterPrimitives lookupSelector: selector].

	^(VirtualContextNode new
		root: activation;
		definitionContent: ((CCodeGenerator new 
			initialize addClass: (primitiveSimulationMethod methodClass))
			cCodeForMethod: selector) withBlanksTrimmed;
		group: self;
		at: #doItReceiver put: primitiveSimulationMethod methodClass new;
		at: #viewer put: #c;
		summary: selector,'.c';
		yourself)