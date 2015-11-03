as yet unclassified
evalFile: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaApplicationSemantic new.
	^semantic value: (self parseFile: someCode).