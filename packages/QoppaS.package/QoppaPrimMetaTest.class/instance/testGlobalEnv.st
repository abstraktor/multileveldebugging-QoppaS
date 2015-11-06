as yet unclassified
testGlobalEnv
	self assert: #+ equals: (self operate: '(car (car (car global-env)))').