data extraction
findPrimitiveContextBelow: aQoppaContextNode
	^ aQoppaContextNode children
		detect: [:each | each nearestSmalltalkContext contextPart method == (QoppaInterpreter >> #buildGlobalEnv)]
		ifNone: [ aQoppaContextNode children
			detect: [:each | (each nearestSmalltalkContext contextPart selector includesSubString: 'Prim')
				and: [each nearestSmalltalkContext contextPart method ~~ (QoppaInterpreter >> #wrapPrim:countingArgs:)]]
			ifNone: [ aQoppaContextNode children
				detect: [:each | each nearestSmalltalkContext contextPart method == (QoppaInterpreter >> #wrapPrim:countingArgs:)]
				ifNone: [nil]]]