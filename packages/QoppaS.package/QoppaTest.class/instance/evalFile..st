as yet unclassified
evalFile: someCode
	self flag: #obsolete.
	^fexprQoppa value: (self parseFile: someCode).