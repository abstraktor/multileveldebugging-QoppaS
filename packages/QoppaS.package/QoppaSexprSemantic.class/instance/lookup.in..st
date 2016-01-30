environments
lookup: aSymbol in: anEnvironment
	anEnvironment ifNil: [self signalUnboundVariable: aSymbol].
	(aSymbol = #'global-env')
		ifTrue: [^QoppaWCons newListFrom: {aSymbol. self globalEnv}].
	(aSymbol = #null)
		ifTrue: [^QoppaWCons newListFrom: {aSymbol. nil}].
	(anEnvironment car assq: aSymbol asSymbol)
		ifNil: [^self lookup: aSymbol in: anEnvironment cdr]
		ifNotNil: [:val| ^val]