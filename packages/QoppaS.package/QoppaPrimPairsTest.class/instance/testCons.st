as yet unclassified
testCons
	self assert: '(1 (2 nil))'
		equals: (self operate: '(cons 1 (cons 2 ''()))') printString. 