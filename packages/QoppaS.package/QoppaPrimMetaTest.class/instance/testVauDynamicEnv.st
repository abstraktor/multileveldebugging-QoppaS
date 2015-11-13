as yet unclassified
testVauDynamicEnv
	self assert: #+ equals: (self operate: '((vau (x) env (car (car (car env)))) 1)')