interpreting
fexprValue: aNode
	| res |
	fexprSemantic := fexprSemantic +1.
	res := self value: aNode.
	fexprSemantic := fexprSemantic -1.
	^res