as yet unclassified
variablesOf: activation
	activation isActualContextNode ifFalse: [^{}].
	^((((1 to: activation contextPart size)
		collect: [:i| i asString -> (activation contextPart at: i)])
		copyWith: (#stackp -> activation contextPart stackPtr))
		copyWith: (#pc -> activation contextPart pc))