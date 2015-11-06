as yet unclassified
initialize
	self fexprSemantic: QoppaFexprSemantic new.
	self globalEnv: self buildGlobalEnv.
	self environment: self globalEnv.