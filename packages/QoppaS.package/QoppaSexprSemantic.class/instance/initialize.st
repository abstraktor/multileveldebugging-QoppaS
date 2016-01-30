initialize-release
initialize
	self fexprSemantic: 0.
	self globalEnv: self buildGlobalEnv.
	self environment: self globalEnv.
	self value: (QoppaGrammar match: QoppaPrelude smallPrelude startingFrom: 'File')