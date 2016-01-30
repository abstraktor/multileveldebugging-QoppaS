private-utilities
bind: names to: values
	| frame |

	(names isNil and: [values isNil])
		ifTrue: [^nil].

	(names = #'_')
		ifTrue: [^nil].

	names isSymbol
		ifTrue: [^QoppaWCons newAssociationListFrom: {names -> values}].

	frame := QoppaWCons newAssociationListFrom: {}.
	names with: values do: [:name :value |
		(self bind: name to: value)
			ifNotNil: [:newFrame|
				frame := newFrame cdr: frame]].
	^frame