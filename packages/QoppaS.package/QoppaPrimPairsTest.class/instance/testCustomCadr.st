as yet unclassified
testCustomCadr
	self assert: 2 equals: (self readAndEvaluate: '(car (cdr ''(1 2 3)))').
	self readAndEvaluate: '(define (cadr x) (car (cdr x)))'.
	self assert: 2 equals: (self readAndEvaluate: '(cadr ''(1 2 3))').