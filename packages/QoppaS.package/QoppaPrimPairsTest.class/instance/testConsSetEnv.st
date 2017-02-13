as yet unclassified
testConsSetEnv
	self assert: 1 equals: (self readAndEvaluate: '(set-car! global-env (cons (cons ''one 1) (car global-env)))') car car cdr. 