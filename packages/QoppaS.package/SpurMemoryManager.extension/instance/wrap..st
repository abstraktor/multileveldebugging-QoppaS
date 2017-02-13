*QoppaS
wrap: anObject
	| className |
	"inverse operation of valueOf:"

	anObject class == SmallInteger ifTrue: [^self integerObjectOf: anObject].
	anObject class == Float ifTrue: [^self floatObjectOf: anObject].
	
	anObject class == Boolean ifTrue: [^anObject ifTrue: [self trueObject] ifFalse: [self falseObject]].
	anObject isNil ifTrue: [^self nilObject].
	anObject isCharacter ifTrue: [^self characterObjectOf: anObject].
	
	"inspired by InterpreterSimulator>>#shortPrint:"
	className := anObject class name.
	
	(className endsWith: ' class') ifTrue: [|class|
		class := self coInterpreter findClassNamed: (className truncateTo: className size - (' class' size)).
		self assert: class isNil not.
		^class].

	(anObject isKindOf: Symbol) ifTrue: [^self shouldBeImplemented].
	(anObject isKindOf: String) ifTrue: [^self stringObjectOf: anObject].
			
	self shouldBeImplemented.