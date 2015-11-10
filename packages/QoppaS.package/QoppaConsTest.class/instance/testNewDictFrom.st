as yet unclassified
testNewDictFrom
	self assert: '((#a 1) (#b 2))' equals: (QoppaWCons newDictFrom: {#a -> 1. #b -> 2}) printString