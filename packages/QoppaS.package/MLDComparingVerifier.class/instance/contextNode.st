as yet unclassified
contextNode
	^ComparisonContextNode new
		at: #variables put: results;
		selector: (Interpreter primitiveTable at: resultsPrimitiveIndex+1);
		yourself.