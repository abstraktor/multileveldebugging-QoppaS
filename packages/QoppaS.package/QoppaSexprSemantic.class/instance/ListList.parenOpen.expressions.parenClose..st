as yet unclassified
ListList: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	| exprs |
	expressionsNode children ifEmpty: [^QoppaWCons new].
	exprs := QoppaWCons newListFrom: (expressionsNode children collect: [:exp | self fexprSemantic value: exp]).
	^self eval: exprs in: self environment