as yet unclassified
eval: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaApplicationSemantic new.
	^semantic value: (self parse: someCode).