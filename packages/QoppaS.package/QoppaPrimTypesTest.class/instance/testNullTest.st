as yet unclassified
testNullTest
	self assert: true equals: (self eval: '(null? ())').
	self assert: false equals: (self eval: '(null? (cons 1 ()))').