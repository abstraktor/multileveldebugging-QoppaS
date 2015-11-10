as yet unclassified
ListList: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	expressionsNode children ifEmpty: [^QoppaWCons new].
	^QoppaWCons newListFrom: (expressionsNode children collect: [:exp | self value: exp])