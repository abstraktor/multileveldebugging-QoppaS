as yet unclassified
cdr: aCons
	aCons ifNil: [ ^cdr := nil].
	cdr := (aCons isKindOf: self class)
		ifTrue: [aCons]
		ifFalse: [QoppaWCons withCar: aCons]