as yet unclassified
runOn: aCompiledMethod forPc: pc
	^ParserNodeSelectionPathFinder
		forMethod: aCompiledMethod
		findPathToPc: pc
		