environments
lookup: aSymbol in: anEnvironment
	(aSymbol = #'global-env')
		ifTrue: [^QoppaWCons newListFrom: {aSymbol. self globalEnv}].
	(aSymbol = #null)
		ifTrue: [^QoppaWCons newListFrom: {aSymbol. nil}].
		
	^anEnvironment asQoppaWEnvironment lookup: aSymbol