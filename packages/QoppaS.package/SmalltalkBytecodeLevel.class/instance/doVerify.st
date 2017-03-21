actions
doVerify
	self repo selectedActivation pc: self lastClickedPc.
	(self verifier verifyNextBytecodeOf: self selectedActivation contextPart)
		ifNil: [self notify: 'I don''t know how to simulate this one'. ]
		ifNotNil: [:res|
			res ifTrue: [self inform: 'All good: they all return ', self verifier results values first]
				ifFalse: [self verifier confirm]]