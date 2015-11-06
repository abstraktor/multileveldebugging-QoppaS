as yet unclassified
testEval
	"self assert: (Cons newListFrom: {#+. 1. 2}) equals: (self operate: '(eval global-env ''(cons + (cons 1 (cons 2 ''()))))')."
	self assert: (Cons newListFrom: {#+. 1. 2}) equals: (self operate: '(eval global-env ''(cons + (1 2)))').