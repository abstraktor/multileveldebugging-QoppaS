as yet unclassified
frameTitleOf: activation 
	^activation at: #summary ifAbsent: [
			activation isActualContextNode ifTrue: [
				activation contextPart printString]]