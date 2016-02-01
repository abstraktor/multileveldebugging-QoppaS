as yet unclassified
testLookup
	self assert: 1 equals: (self readAndEvaluate: '(lookup ''x ''(((x 1))))') cadr