as yet unclassified
initialize
	self listSemantic: QoppaListSemantic new.
	self environment: self buildGlobalFrame. "environment could be a Cons of dicts in future"