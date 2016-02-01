initialize-release
initialize
	self globalEnv: self buildGlobalEnv.
	reader := QoppaGrammar semanticAction: QoppaFexprSemantic new.
	self readAndEvaluate: QoppaPrelude smallPrelude