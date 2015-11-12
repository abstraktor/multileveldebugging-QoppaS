as yet unclassified
testBoolEvaluatesOnlyTrueBranch
	self assert: 1 equals: (self operate: '(bool #t 1 undefined)').
	self should: [self operate: '(bool #f 1 undefined)']
		raise: QoppaUnboundVariableFailure