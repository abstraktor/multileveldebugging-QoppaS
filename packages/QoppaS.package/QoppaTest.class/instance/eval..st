as yet unclassified
eval: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaFexprSemantic new.
	^semantic value: (self parse: someCode).