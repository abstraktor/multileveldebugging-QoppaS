data extraction
permissiveBind: names to: values
	"like #bind:to: but allows the sizes of names and values to differ"
	| frame size |
	(names isNil and: [values isNil])
		ifTrue: [^nil].
	(names = #'_')
		ifTrue: [^nil].
	names isSymbol
		ifTrue: [^QoppaWCons newAssociationListFrom: {names -> values}].
	frame := QoppaWCons newAssociationListFrom: {}.
	size := names size min: values size.
	1 to: size do: [:index | | name value |
		name := names at: index.
		value := values at: index.
		(self permissiveBind: name to: value)
			ifNotNil: [:newFrame |
				frame := newFrame cdr: frame]].
	size < names size
		ifTrue: [ | newFrame |
			newFrame := QoppaWCons newAssociationListFrom: ((names allButFirst: size) collect: [:each | each -> '!!! missing !!!'] ).
			frame := newFrame cdr: frame].
	size < values size
		ifTrue: [ | newFrame |
			newFrame := QoppaWCons newAssociationListFrom: {'(excess args)' -> (values allButFirst: size)}.
			frame := newFrame cdr: frame].
	^frame