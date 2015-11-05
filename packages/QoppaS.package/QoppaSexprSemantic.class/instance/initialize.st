as yet unclassified
initialize
	self fexprSemantic: QoppaFexprSemantic new.
	self environment: self buildGlobalFrame. "environment could be a Cons of dicts in future"