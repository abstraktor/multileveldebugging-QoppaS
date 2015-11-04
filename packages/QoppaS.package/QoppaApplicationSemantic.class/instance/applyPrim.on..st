as yet unclassified
applyPrim: operator on: operands
	self primSelectorDict at: operator asSymbol
		ifPresent: [:selector| ^self perform: selector with: operands]
		"ifAbsent: [|res|
			res := OrderedCollection newFrom: {operator}.
			res addAll: operands.
			^res]"
		ifAbsent: [ QoppaPrimitiveMissingFailure signal: operator]
	