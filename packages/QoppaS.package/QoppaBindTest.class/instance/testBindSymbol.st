as yet unclassified
testBindSymbol
	self assert: '((a 2))' equals: (interpreter bind: (QoppaWSymbol for: #a) to: 2) qoppaPrintString 