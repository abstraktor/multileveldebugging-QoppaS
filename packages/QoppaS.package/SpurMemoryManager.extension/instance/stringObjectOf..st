*QoppaS
stringObjectOf: aString
	| oop ptr size |
	size := aString size.
	oop := self instantiateClass: self classByteArray indexableSize: size.
	ptr := self firstIndexableField: oop.
	0 to: size-1 do:[:i|
		ptr at: i put: (aString at: (i+1)) asInteger].
	
	^oop