actions
doVerify
	self repo selectedActivation pc: self lastClickedPc.
	(self verifier verifyNextBytecodeOf: self selectedActivation contextPart)
		ifNil: [self notify: 'I don''t know how to simulate this one'. ]
		ifNotNil: [:res|
			res ifTrue: [self notify: 'All good: they all return ', self verifier results first]
				ifFalse: [self verifier confirm]]