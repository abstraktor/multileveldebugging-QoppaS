as yet unclassified
testValid
	self assert: (self verifier verifyPrimitive: 2 rcv: 9 args: {8}).
	self assert: (self verifier resultsAreValid).
	self assert: (self verifier results at: 'Fallback SmallInteger>>-') result equals: 1.