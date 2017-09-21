private-utilities
bind: names to: values
	"raises QoppaArityMismatchError if params are incompatible with operands"
	| frame carBinding cdrBinding |

	(names isNil)
		ifTrue: [(values isNil)
			ifTrue: [^nil]
			ifFalse: [QoppaArityMismatchError signal: 'ArityMismatch']].

	(names = #'_')
		ifTrue: [^nil].

	names isQoppaWSymbol
		ifTrue: [^QoppaWCons newAssociationListFrom: {names -> values}].

	names isSymbol ifTrue: [Error signal: 'you forgot to do QoppaWSymbol for: names'].
	
	frame := QoppaWCons newAssociationListFrom: {}.
	self flag: #hacky. "append: for UndefinedObject?"
	carBinding := self bind: names car to: values car.
	cdrBinding := self bind: names cdr to: values cdr.
	^ carBinding
		ifNil: [cdrBinding]
		ifNotNil: [carBinding append: cdrBinding]