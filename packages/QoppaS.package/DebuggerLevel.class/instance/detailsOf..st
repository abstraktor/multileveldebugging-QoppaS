as yet unclassified
detailsOf: activation 
	^activation at: #content ifAbsent: [
		activation isActualContextNode ifTrue: [
			activation contextPart sourceCode]]