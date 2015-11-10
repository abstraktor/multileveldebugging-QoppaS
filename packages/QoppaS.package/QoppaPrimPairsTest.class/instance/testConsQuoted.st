as yet unclassified
testConsQuoted
	self assert: (QoppaWCons newListFrom: {1. QoppaWSymbol for: #a. QoppaWSymbol for: #b. QoppaWSymbol for: #c})
		equals: (self operate: '(cons 1 ''(a b c))')