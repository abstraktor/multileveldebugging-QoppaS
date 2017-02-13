private-utilities
toQoppaBoolean: aBoolean
	"TODO: refactor this as extension methods in True and False #asQoppaBoolean"
	^ aBoolean ifTrue: [self trueValue] ifFalse: [self falseValue]