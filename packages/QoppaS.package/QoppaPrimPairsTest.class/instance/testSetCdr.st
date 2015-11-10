as yet unclassified
testSetCdr
	self assert: (QoppaWCons newListFrom: {1. 4. nil}) equals: (self operate: '(set-cdr! (cons 1 (cons 2 (cons 3 ''()))) (cons 4 ''()))')