as yet unclassified
eval: someCode
	self flag: #obsolete.
	^fexprQoppa value: (self parse: someCode).