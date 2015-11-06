as yet unclassified
testAssq
	self assert: '(#a 1)' equals: ((Cons newDictFrom: {#a -> 1. #b -> 2}) assq: #a) printString 