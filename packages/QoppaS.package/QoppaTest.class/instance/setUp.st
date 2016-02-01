as yet unclassified
setUp
	interpreter := QoppaInterpreter new.
	interpreter reader: (QoppaGrammar semanticAction: QoppaFexprSemantic new).