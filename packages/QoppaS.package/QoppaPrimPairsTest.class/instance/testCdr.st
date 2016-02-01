as yet unclassified
testCdr
	self assert: (QoppaWCons newListFrom: {2. 3}) equals: (self readAndEvaluate: '(cdr (cons 1 (cons 2 (cons 3 ''()))))')