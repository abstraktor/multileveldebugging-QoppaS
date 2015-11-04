as yet unclassified
testCdr
	self assert: ({2. 3} asOrderedCollection) equals: (self operate: '(cdr (cons 1 (cons 2 (cons 3()))))')