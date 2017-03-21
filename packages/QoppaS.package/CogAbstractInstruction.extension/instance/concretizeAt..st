*QoppaS-Verifier
concretizeAt: actualAddress
	"Generate concrete machine code for the instruction at actualAddress,
	 setting machineCodeSize, and answer the following address."
	address := actualAddress.
	self dispatchConcretize.
	self assert: (maxSize = nil or: [maxSize >= machineCodeSize]).
	(actualAddress = Cogit debugConcretizationOf
	and: [Cogit initializing not]
	and: [machineCodeSize > 0 "don't stop for the label, there'll be an actual instruction at this position"])
		ifTrue: [WaitAndRaiseFoundIt signal: 'CogInstruction to machine code'].
	^actualAddress + machineCodeSize