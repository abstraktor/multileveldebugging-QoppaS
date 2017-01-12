as yet unclassified
resultGeneratingBlockFor: result
	^[CompiledMethod receiver: (result receiver)
			withArguments: (result arguments)
			executeMethod: (result at: #methodReference) compiledMethod withoutPrimitive] asContext
		stepToSendOrReturn quickStep
		stepToSendOrReturn quickStep 
		stepToSendOrReturn quickStep
		stepToSendOrReturn quickStep
		stepToSendOrReturn quickStep
		stepToSendOrReturn step step step step step