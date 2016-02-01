as yet unclassified
parse: someCode
	self flag: #obsolete.
	^self parse: someCode as: 'SExpression'