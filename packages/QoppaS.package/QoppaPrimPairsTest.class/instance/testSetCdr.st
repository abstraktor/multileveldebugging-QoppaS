as yet unclassified
testSetCdr
	self assert: ({1. 4} asOrderedCollection) equals: (self operate: '(set-cdr! (cons 1 (cons 2 (cons 3 ()))) 4)')