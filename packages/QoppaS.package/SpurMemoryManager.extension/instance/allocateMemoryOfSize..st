*QoppaS
allocateMemoryOfSize: memoryBytes
	<doNotGenerate>
	| bytesPerElement size |
	bytesPerElement := (self memoryClass basicNew: 0) bytesPerElement.
	
	size := memoryBytes + bytesPerElement - 1 // bytesPerElement.
	memory := nil"Cogit debugConcretizationOf"
		ifNotNil: [(self endianness == #little
			ifTrue: [WaitAndRaiseLittleEndianBitmap]
			ifFalse: [WaitAndRaiseBitmap])
				new: size raiseWhenWriting: Cogit debugConcretizationOf]
		ifNil: [self memoryClass new: size]