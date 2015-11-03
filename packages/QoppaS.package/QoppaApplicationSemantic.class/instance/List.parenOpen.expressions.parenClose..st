as yet unclassified
List: aNode parenOpen: x expressions: expressionsNode parenClose: xx
	| exprs |
	expressionsNode children ifEmpty: [^OrderedCollection new].
	exprs := expressionsNode children collect: [:exp | self value: exp].
	^self applyPrim: exprs first asSymbol
               on: exprs allButFirst
               forInput: expressionsNode interval
               startedAt: 0 .