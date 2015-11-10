as yet unclassified
initialize
	self fexprSemantic: 0.
	self globalEnv: self buildGlobalEnv.
	self environment: self globalEnv.