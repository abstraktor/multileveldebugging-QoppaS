as yet unclassified
variablesOf: activation
	^((((1 to: activation contextPart size)
		collect: [:i| i asString -> (activation contextPart at: i)])
		copyWith: (#stackp -> activation contextPart stackPtr))
		copyWith: (#pc -> activation contextPart pc))