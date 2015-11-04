as yet unclassified
ListList: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	| exprs |
	expressionsNode children ifEmpty: [^OrderedCollection new].
	exprs := expressionsNode children collect: [:exp | self value: exp].
	^self eval: exprs in: self environment