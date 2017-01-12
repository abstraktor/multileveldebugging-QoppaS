as yet unclassified
testVerifyNextBytecodeOf
	| valid |
	valid := self verifier verifyNextBytecodeOf: [ 4 * 2 ] asContext step step.
	
	self assert: valid.
	self assert: (self verifier results at: 'Fallback SmallInteger>>*') result equals: 8.