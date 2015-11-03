as yet unclassified
quote: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaListSemantic new.
	^semantic value: (self parse: someCode).