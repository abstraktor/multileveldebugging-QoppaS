*QoppaS-Verifier
opcode: value
	opcode := value.
	
	(Cogit debugHilPc = self hilPc and: [Cogit initializing not])
		ifTrue: [WaitAndRaiseFoundIt signal: 'ST80 bytecode to cog abstract instruction'].
	
	^opcode