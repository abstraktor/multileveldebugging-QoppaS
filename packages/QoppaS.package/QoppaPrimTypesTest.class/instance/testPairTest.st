as yet unclassified
testPairTest
	self assert: true equals: (self eval: '(pair? (cons 1 (cons 2 ())))').
	self assert: true equals: (self eval: '(pair? (list 1 2 3))').
	self assert: false equals: (self eval: '(pair? ())').