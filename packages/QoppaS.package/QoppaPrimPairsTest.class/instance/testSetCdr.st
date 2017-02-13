as yet unclassified
testSetCdr
	self assert: (QoppaWCons newListFrom: {1. 4}) equals: (self readAndEvaluate: '(set-cdr! (cons 1 (cons 2 (cons 3 ''()))) (cons 4 ''()))')