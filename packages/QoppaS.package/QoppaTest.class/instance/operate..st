as yet unclassified
operate: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaApplicationSemantic new.
	^semantic value: (self parse: someCode).