as yet unclassified
contextNode
	^VirtualContextNode new
		at: #variables put: results;
		definitionContent: '';
		summary: (Interpreter primitiveTable at: resultsPrimitiveIndex+1);
		yourself.