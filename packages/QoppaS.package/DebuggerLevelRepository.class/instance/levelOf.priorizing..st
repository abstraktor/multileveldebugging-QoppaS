as yet unclassified
levelOf: anActivation priorizing: aSelectedLevel
	((aSelectedLevel includes: anActivation)
		and: [aSelectedLevel isAllContainingLevel not]) ifTrue: [^aSelectedLevel].
	^self levelOf: anActivation