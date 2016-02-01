as yet unclassified
testParseExplicitCdr
	self flag: #split.
	self assert: (QoppaWCons withCar: 1 cdr: 2) equals: (self readAndEvaluate: '''(1 . 2)').