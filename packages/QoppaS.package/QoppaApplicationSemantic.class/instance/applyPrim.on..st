as yet unclassified
applyPrim: operator on: operands
	self globalFrame at: operator asSymbol
		ifPresent: [:block|
			^block value: operands asArray]
		"ifAbsent: [|res|
			res := OrderedCollection newFrom: {operator}.
			res addAll: operands.
			^res]"
		ifAbsent: [ QoppaPrimitiveMissingFailure signal: operator]
	