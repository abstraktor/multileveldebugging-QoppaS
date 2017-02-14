as yet unclassified
children: activation
	| children selector primitiveSimulationMethod |
	activation basicHasChildren ifTrue: [^activation basicChildren ].
	
	children := super children: activation.

	(self includes: activation) ifFalse: [^children].
	
	selector := Interpreter primitiveTable at: ((activation root at: #primitive:) at: 1)+1.
	primitiveSimulationMethod := InterpreterPrimitives lookupSelector: selector.
	
	children add: (VirtualContextNode new
		root: activation;
		definitionContent: (primitiveSimulationMethod getSource);
		group: self;
		at: #viewer put: #smalltalk;
		summary: selector,'.slang';
		yourself).
	
	^children