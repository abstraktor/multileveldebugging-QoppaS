as yet unclassified
fillDataHolders: aQoppaContextNode
	| operateContextPart interpreter operative arguments |
	operateContextPart := aQoppaContextNode at: #operateSmalltalkContext.
	interpreter := operateContextPart receiver.
	operative := operateContextPart arguments first.
	arguments := operateContextPart arguments second.
	aQoppaContextNode dataHolders: (operative parameters
		ifNotNil: [:parameters | (interpreter bind: parameters to: arguments asQoppaList)
			collect: [:eachAssoc | eachAssoc car -> eachAssoc cadr]]
		ifNil: [arguments collectWithIndex: [:each :index | 'argument', index -> each]]).