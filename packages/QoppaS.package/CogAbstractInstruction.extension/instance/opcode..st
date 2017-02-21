*QoppaS-Verifier
opcode: value
	opcode := value.
	
	(Cogit debugHilPc = self hilPc) ifTrue: [1 halt. "WaitAndRaiseFoundIt signal"].
	
	^opcode