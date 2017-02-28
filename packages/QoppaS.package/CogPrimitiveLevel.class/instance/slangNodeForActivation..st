as yet unclassified
slangNodeForActivation: activation
	| primitiveSimulationMethod selector |
	selector := Interpreter primitiveTable at: ((activation at: #primitive:) at: 1)+1.
	primitiveSimulationMethod := (InterpreterPrimitives lookupSelector: selector)
		ifNil: [StackInterpreterPrimitives lookupSelector: selector].
	
	^(VirtualContextNode new
		root: activation;
		definitionContent: (primitiveSimulationMethod getSource);
		group: self;
		at: #doItReceiver put: primitiveSimulationMethod methodClass new;
		at: #viewer put: #smalltalk;
		summary: selector,'.slang';
		yourself).