as yet unclassified
generateLevelsFor: repo
	(repo residentialStack anySatisfy: [:contextPart| contextPart receiver class == QoppaInterpreter])
		ifTrue: [^super generateLevelsFor: repo].
	
	^{}