as yet unclassified
testNestedVau
	self assert: 3 equals: (self operate: '(((vau (x) env (vau (y) _ (+ x y))) 1) 2)')