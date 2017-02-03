*QoppaS
findClassNamed: aClassName
	self objectMemory classTableEntriesDo: [:classOop :index|
		(aClassName = (self nameOfClass: classOop))
			ifTrue: [^classOop]].
		
	^nil