*QoppaS
valueOf: anOop

	| className |
	(self isIntegerObject: anOop) ifTrue: [^self integerValueOf: anOop].
	(self isFloatInstance: anOop) ifTrue: [^self floatValueOf: anOop].

	(self trueObject = anOop) ifTrue: [^true].
	(self falseObject = anOop) ifTrue: [^false].
	(self nilObject = anOop)    ifTrue: [^nil].
	
	"inspired by InterpreterSimulator>>#shortPrint:"
	className := self coInterpreter nameOfClass: (self fetchClassOf: anOop).
	
	(className endsWith: ' class') ifTrue: [|class|
		class := Smalltalk classNamed: (className truncateTo: className size - (' class' size)).
		self assert: class isNil not.
		^class].
	
	('String' = className) ifTrue: [^self stringOf: anOop].
	('ByteString' = className) ifTrue: [^(self stringOf: anOop) asByteString].
	
	(#('Symbol' 'ByteSymbol') includes: className) ifTrue: [^(self stringOf: anOop) asSymbol].
	
	('Association' = className) ifTrue: [^ Association
		key: (self valueOf: (self longAt: anOop + self baseHeaderSize))
		value: (self valueOf: (self longAt: anOop + self baseHeaderSize + self wordSize))].
			
	self shouldBeImplemented.