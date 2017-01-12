as yet unclassified
resultGeneratingBlockFor: result
	primitiveIndex := result primitiveIndex.
	receiver := result receiver.
	arguments := result arguments.
	^(([self verifyPrimitive] asContext
		stepIntoMethod: (simulator class lookupSelector: #dispatchOn:in:))
		stepUntil: [:ctxt| ctxt selectorToSendOrSelf = #perform:])
		step "entering the primitive implementation"
		stepToSendOrReturn