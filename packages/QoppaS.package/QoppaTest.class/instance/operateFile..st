as yet unclassified
operateFile: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaApplicationSemantic new.
	^semantic value: (self parseFile: someCode).