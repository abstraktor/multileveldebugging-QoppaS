as yet unclassified
quoteFile: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaListSemantic new.
	^semantic value: (self parseFile: someCode).