as yet unclassified
operate: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaSexprSemantic new.
	^semantic value: (self parse: someCode).