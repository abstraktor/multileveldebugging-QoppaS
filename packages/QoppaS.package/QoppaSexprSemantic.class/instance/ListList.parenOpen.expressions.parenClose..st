as yet unclassified
ListList: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	| exprs |
	expressionsNode children ifEmpty: [^Cons new].
	exprs := Cons newListFrom: (expressionsNode children collect: [:exp | self value: exp]).
	^self eval: exprs in: self environment