as yet unclassified
testShouldInputBeEvaluated
	self deny: (repl shouldInputBeEvaluated: ' ').
	self deny: (repl shouldInputBeEvaluated: '(+)').
	self deny: (repl shouldInputBeEvaluated: String cr).
	self assert: (repl shouldInputBeEvaluated: '()', String cr).
	self assert: (repl shouldInputBeEvaluated: ' a', String cr, ')))').
	self assert: (repl shouldInputBeEvaluated: '(+ 1 2', String cr, ')').
	self deny:  (repl shouldInputBeEvaluated: ' a', String cr, '))) (+ 1 2))').