printing
qoppaPrintString
	^ String streamContents: [:str | self printAsQoppaOn: str]