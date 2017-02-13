as yet unclassified
testCons
	self assert: '(1 2)'
		equals: (self readAndEvaluate: '(cons 1 (cons 2 ''()))') qoppaPrintString. 