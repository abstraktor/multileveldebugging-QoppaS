as yet unclassified
eval: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaListSemantic new.
	^semantic value: (self parse: someCode).