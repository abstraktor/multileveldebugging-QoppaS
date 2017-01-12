as yet unclassified
resultGeneratingBlockFor: result
	primitiveIndex := result primitiveIndex.
	receiver := result receiver.
	arguments := result arguments.
	^([self verifyPrimitive] asContext
		stepIntoMethod: CompiledMethod class>>#receiver:withArguments:executeMethod:)
		stepToSendOrReturn step stepToSendOrReturn