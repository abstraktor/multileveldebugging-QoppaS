as yet unclassified
testCons
	self assert: ({1. 2} asOrderedCollection)	
		equals: (self operate: '(cons 1 (cons 2 ()))'). 