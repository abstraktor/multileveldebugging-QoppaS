as yet unclassified
testEval
	self assert: {#+. 1. 2.} asOrderedCollection equals: (self operate: '(eval () ''(cons ''+ (cons 1(cons 2 ()))))').