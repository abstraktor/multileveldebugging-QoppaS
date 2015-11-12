as yet unclassified
testWithCarCdrConstructor
	| cons |
	cons := QoppaWCons withCar: 1 cdr: 2.
	self assert: cons car == 1.
	self assert: cons cdr == 2