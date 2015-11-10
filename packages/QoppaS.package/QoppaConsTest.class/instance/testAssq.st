as yet unclassified
testAssq
	self assert: '(#b 2)' equals: ((QoppaWCons newDictFrom: {#a -> 1. #b -> 2}) assq: #b) printString 