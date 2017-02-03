*QoppaS
wrapSymbol: aSymbol
	| oop ptr size symbolClass |
	size := aSymbol size.
	symbolClass := self findClassNamed: 'Symbol'.
	oop := self objectMemory instantiateClass: symbolClass indexableSize: aSymbol size.
	ptr := oop + self objectMemory baseHeaderSize.
	0 to: size-1 do:[:i|
		self objectMemory storeByte: i ofObject: oop withValue: (aSymbol at: (i+1)) asInteger].
	
	^oop