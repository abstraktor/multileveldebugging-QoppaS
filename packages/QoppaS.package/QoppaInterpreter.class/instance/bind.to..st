private-utilities
bind: names to: values
	| frame carBinding cdrBinding |

	(names isNil and: [values isNil])
		ifTrue: [^nil].

	(names = #'_')
		ifTrue: [^nil].

	names isQoppaWSymbol
		ifTrue: [^QoppaWCons newAssociationListFrom: {names -> values}].

	frame := QoppaWCons newAssociationListFrom: {}.
	self flag: #hacky. "append: for UndefinedObject?"
	carBinding := self bind: names car to: values car.
	cdrBinding := self bind: names cdr to: values cdr.
	^ carBinding
		ifNil: [cdrBinding]
		ifNotNil: [carBinding append: cdrBinding]