as yet unclassified
testNestedVau
	self assert: 3 equals: (self readAndEvaluate: '(((vau (x) env (vau (y) _ (+ x y))) 1) 2)')