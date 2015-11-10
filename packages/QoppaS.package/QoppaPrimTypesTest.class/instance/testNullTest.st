as yet unclassified
testNullTest
	self assert: true equals: (self operate: '(null? ''())').
	self assert: false equals: (self operate: '(null? (cons 1 ''()))').