as yet unclassified
testPrintStringForListEndingWithNonNilCdr
	| cons |
	cons := QoppaWCons newListFrom: {1. 2}.
	cons cdr cdr: 3.
	self assert: '(1 2 . 3)' equals: cons qoppaPrintString  