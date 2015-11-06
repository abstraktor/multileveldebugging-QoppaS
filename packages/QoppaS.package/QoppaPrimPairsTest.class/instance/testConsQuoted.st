as yet unclassified
testConsQuoted
	self assert: (Cons newListFrom: {1. #a. #b. #c}) equals: (self operate: '(cons 1 ''(a b c))')