as yet unclassified
testCar
	self assert: 1 equals: (self operate: '(car (cons 1 (cons 2 ())))')