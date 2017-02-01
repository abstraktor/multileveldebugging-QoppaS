data extraction
fillDataHolders: aQoppaContextNode
	| operateContextPart interpreter operative arguments |
	operateContextPart := aQoppaContextNode at: #operateSmalltalkContext.
	interpreter := operateContextPart receiver.
	operative := operateContextPart arguments first.
	arguments := operateContextPart arguments second.
	aQoppaContextNode variables: (operative parameters
		ifNotNil: [:parameters | (self permissiveBind: parameters to: arguments asQoppaList)
			collect: [:eachAssoc | eachAssoc car -> eachAssoc cadr]]
		ifNil: [arguments ifNotNil: [arguments collectWithIndex: [:each :index | 'argument', index -> each]]]).