actions
ListList: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	self flag: #qoppaNil.
	expressionsNode children ifEmpty: [^nil].
	^QoppaWCons newListFrom: (expressionsNode children collect: [:exp | self value: exp])