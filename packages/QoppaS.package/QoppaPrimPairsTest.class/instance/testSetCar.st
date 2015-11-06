as yet unclassified
testSetCar
	self assert: (Cons newListFrom: {1. 2. 3}) equals: (self operate: '(set-car! (cons 0 (cons 2 (cons 3 ()))) 1)')