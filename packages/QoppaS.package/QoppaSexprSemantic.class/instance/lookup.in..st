as yet unclassified
lookup: aSymbol in: anEnvironment
	^anEnvironment at: aSymbol asSymbol
	"(anEnvironment car assq: aSymbol asSymbol)
		ifNil: [^self lookup: aSymbol in: anEnvironment cdr]
		ifNotNil: [:val| ^val]"