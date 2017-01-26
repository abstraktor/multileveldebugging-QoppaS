as yet unclassified
testEvaluate
	| repl |
	repl := QoppaRepl new
		readAndEvaluate: '(+ 1 2)'.
	self assert: 1 equals: repl history size.
	self assert: 3 equals: repl history first result