as yet unclassified
testBindRightNil
	self assert: '((a nil))' equals: (interpreter bind: (QoppaWSymbol for: #a) to: nil) qoppaPrintString