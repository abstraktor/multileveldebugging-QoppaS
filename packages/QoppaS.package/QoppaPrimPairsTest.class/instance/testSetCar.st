as yet unclassified
testSetCar
	self assert: (QoppaWCons newListFrom: {1. 2. 3}) equals: (self readAndEvaluate: '(set-car! (cons 0 (cons 2 (cons 3 ''()))) 1)')