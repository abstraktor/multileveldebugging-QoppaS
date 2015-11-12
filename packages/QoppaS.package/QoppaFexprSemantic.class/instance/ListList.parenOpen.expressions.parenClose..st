as yet unclassified
ListList: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	expressionsNode children ifEmpty: [^nil].
	^QoppaWCons newListFrom: (expressionsNode children collect: [:exp | self value: exp])