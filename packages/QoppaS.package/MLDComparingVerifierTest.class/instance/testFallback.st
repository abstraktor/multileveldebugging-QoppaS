as yet unclassified
testFallback
	self deny: (self verifier verifyPrimitive: 1 rcv: 8 args: {9}).
	self deny:  (self verifier resultsAreValid).
	self assert: (self verifier results at: 'Fallback MLDComparingVerifierTest>>leetFallback:') result equals: 1337.