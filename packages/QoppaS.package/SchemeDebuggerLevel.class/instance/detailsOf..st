as yet unclassified
detailsOf: anActivation
	| operative params |
	operative := anActivation at: #operative.
	params := ((anActivation at: #operands) 
		collect: [:each| each qoppaPrintString])
		joinSeparatedBy: ' '.
	^'(', (self operatorOf: anActivation), Character space, params, ')'