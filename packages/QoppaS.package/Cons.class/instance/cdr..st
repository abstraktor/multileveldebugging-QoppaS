as yet unclassified
cdr: aCons
	aCons ifNil: [ ^cdr := nil].
	cdr := (aCons isKindOf: self class)
		ifTrue: [	aCons isEmpty ifTrue: [nil] ifFalse: [aCons]]
		ifFalse: [ Cons withCar: aCons]