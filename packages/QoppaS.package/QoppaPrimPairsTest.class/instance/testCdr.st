as yet unclassified
testCdr
	self assert: (QoppaWCons newListFrom: {2. 3}) equals: (self operate: '(cdr (cons 1 (cons 2 (cons 3 ''()))))')