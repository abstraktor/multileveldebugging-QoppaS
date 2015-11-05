as yet unclassified
operateFile: someCode
	| semantic |
	semantic := QoppaGrammar semanticAction: QoppaSexprSemantic new.
	^semantic value: (self parseFile: someCode).