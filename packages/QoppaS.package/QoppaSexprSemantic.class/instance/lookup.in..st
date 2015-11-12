as yet unclassified
lookup: aSymbol in: anEnvironment
	anEnvironment ifNil: [ QoppaUnboundVariableFailure signal: aSymbol].
	(aSymbol = #'global-env')
		ifTrue: [^QoppaWCons withCar: aSymbol cdr: self globalEnv].
	(anEnvironment car assq: aSymbol asSymbol)
		ifNil: [^self lookup: aSymbol in: anEnvironment cdr]
		ifNotNil: [:val| ^val]