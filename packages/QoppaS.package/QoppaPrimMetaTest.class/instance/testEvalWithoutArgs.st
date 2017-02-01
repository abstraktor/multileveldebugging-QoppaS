as yet unclassified
testEvalWithoutArgs
	self should: [self readAndEvaluate: '(eval)']
		raise: QoppaArityMismatchError.