as yet unclassified
testSetCar
	self assert: (QoppaWCons newListFrom: {1. 2. 3. nil}) equals: (self operate: '(set-car! (cons 0 (cons 2 (cons 3 ''()))) 1)')