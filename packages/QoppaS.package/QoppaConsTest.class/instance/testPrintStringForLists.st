as yet unclassified
testPrintStringForLists
	self assert: '(1 2 3)' equals: (QoppaWCons newListFrom: {1. 2. 3}) qoppaPrintString