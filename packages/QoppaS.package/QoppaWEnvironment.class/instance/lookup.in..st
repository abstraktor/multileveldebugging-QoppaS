printing
lookup: aSymbol in: anEnvironment
	| lookupInParentFrameBlock |
	
	anEnvironment ifNil: [self signalUnboundVariable: aSymbol].

	lookupInParentFrameBlock := [^self lookup: aSymbol in: anEnvironment cdr].
	anEnvironment car
		ifNil: [lookupInParentFrameBlock value]
		ifNotNilDo: [:frame | (anEnvironment car assq: aSymbol asSymbol)
			ifNil: [lookupInParentFrameBlock value]
			ifNotNilDo: [:value | ^ value]]