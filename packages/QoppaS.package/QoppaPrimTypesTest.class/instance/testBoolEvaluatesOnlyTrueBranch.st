as yet unclassified
testBoolEvaluatesOnlyTrueBranch
	self assert: 1 equals: (self readAndEvaluate: '(bool #t 1 undefined)').
	self should: [self readAndEvaluate: '(bool #f 1 undefined)']
		raise: QoppaUnboundVariableFailure