as yet unclassified
testPrintStringForSimpleCell
	self assert: '(1 . 2)' equals: (QoppaWCons withCar: 1 cdr: 2) qoppaPrintString