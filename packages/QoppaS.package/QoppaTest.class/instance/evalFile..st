as yet unclassified
evalFile: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaListSemantic new.
	^semantic value: (self parseFile: someCode).