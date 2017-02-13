as yet unclassified
detailsOf: anActivation
	| operative params |
	anActivation isActualContextNode ifTrue: [^''].
	operative := anActivation at: #operative.
	params := ((anActivation at: #operands) 
		collect: [:each| each qoppaPrintString])
		joinSeparatedBy: ' '.
	^'(', (self operatorOf: anActivation), Character space, params, ')'
	"^(anActivation at: #env) asQoppaWEnvironment lookup:
		(QoppaWSymbol for: (self operatorOf: anActivation) asSymbol)"