as yet unclassified
testPairTest
	self assert: true equals: (self operate: '(pair? (cons 1 (cons 2 ())))').
	self assert: false equals: (self operate: '(pair? ())').