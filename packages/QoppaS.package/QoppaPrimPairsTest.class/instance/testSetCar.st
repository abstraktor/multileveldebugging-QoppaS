as yet unclassified
testSetCar
	self assert: ({1. 2. 3} asOrderedCollection) equals: (self operate: '(set-car! (cons 0 (cons 2 (cons 3 ()))) 1)')