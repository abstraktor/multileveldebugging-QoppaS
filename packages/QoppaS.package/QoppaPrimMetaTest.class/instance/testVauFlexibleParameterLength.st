as yet unclassified
testVauFlexibleParameterLength
	self assert: 1 equals: (self readAndEvaluate: '((vau all _ (car all)) 1 2 3)')