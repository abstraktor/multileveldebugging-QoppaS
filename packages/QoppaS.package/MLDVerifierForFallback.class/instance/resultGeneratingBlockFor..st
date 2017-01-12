as yet unclassified
resultGeneratingBlockFor: result
	^([CompiledMethod receiver: (result receiver)
			withArguments: (result arguments)
			executeMethod: (result at: #methodReference) compiledMethod withoutPrimitive] asContext
		stepIntoMethod: CompiledMethod class>>#receiver:withArguments:executeMethod:)
		stepToSendOrReturn step stepToSendOrReturn