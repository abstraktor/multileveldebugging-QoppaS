as yet unclassified
applyPrim: operator on: operands forInput: interval startedAt: position
	self primSelectorDict at: operator asSymbol
		ifPresent: [:selector| ^self perform: selector withEnoughArguments: {operands. interval. position}]
		ifAbsent: [|res|
			res := OrderedCollection newFrom: {operator}.
			res addAll: operands.
			^res]
		"ifAbsent: [ QoppaPrimitiveMissingFailure signal: operator]"
	