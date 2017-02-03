environments
lookup: aSymbol in: anEnvironment
	| lookupInParentFrameBlock |
	anEnvironment ifNil: [self signalUnboundVariable: aSymbol].
	(aSymbol = #'global-env')
		ifTrue: [^QoppaWCons newListFrom: {aSymbol. self globalEnv}].
	(aSymbol = #null)
		ifTrue: [^QoppaWCons newListFrom: {aSymbol. nil}].
	lookupInParentFrameBlock := [^self lookup: aSymbol in: anEnvironment cdr].
	anEnvironment car
		ifNil: [lookupInParentFrameBlock value]
		ifNotNilDo: [:frame | (anEnvironment car assq: aSymbol asSymbol)
			ifNil: [lookupInParentFrameBlock value]
			ifNotNilDo: [:value | ^ value]]