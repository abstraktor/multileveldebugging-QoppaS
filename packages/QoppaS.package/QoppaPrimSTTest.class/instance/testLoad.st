as yet unclassified
testLoad
	self assert: 120 equals: (self readAndEvaluate: '(load ''fact) (fact 5)')