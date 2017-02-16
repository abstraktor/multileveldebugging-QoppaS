*QoppaS-Verifier
initialize
	<doNotGenerate>
	operands := CArrayAccessor
				on: (Array new: NumOperands).
	machineCode := self class createMachineCodeAccessorFor: self.
	hilPc := self class nextHilPc