*QoppaS
valueOf: anOop

	| className |
	(self isIntegerValue: anOop) ifTrue: [^self integerValueOf: anOop].
	(self isFloatInstance: anOop) ifTrue: [^self floatValueOf: anOop].

	(self trueObject = anOop) ifTrue: [^true].
	(self falseObject = anOop) ifTrue: [^false].
	(self nilObject = anOop)    ifTrue: [^nil].
	
	"inspired by InterpreterSimulator>>#shortPrint:"
	className := self nameOfClass: (self fetchClassOf: anOop).
	
	('String' = className) ifTrue: [^self stringOf: anOop].
	('ByteString' = className) ifTrue: [^(self stringOf: anOop) asByteString].
	
	(#('Symbol' 'ByteSymbol') = className) ifTrue: [^(self stringOf: anOop) asSymbol].
	
	('Association' = className) ifTrue: [^ Association
		key: (self valueOf: (self longAt: anOop + self baseHeaderSize))
		value: (self valueOf: (self longAt: anOop + self baseHeaderSize + self wordSize))].
			
	self shouldBeImplemented.