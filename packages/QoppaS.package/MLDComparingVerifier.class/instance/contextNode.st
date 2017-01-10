as yet unclassified
contextNode
	^VirtualContextNode new
		at: #variables put: results;
		definitionContent: '';
		summary: 'Comparison Failed: ', (Interpreter primitiveTable at: resultsPrimitiveIndex+1);
		at: #viewer put: #verifier;
		yourself.