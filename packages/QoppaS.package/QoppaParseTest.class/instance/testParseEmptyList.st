as yet unclassified
testParseEmptyList
	self flag: #split.
	self assert: (self readAndEvaluate: '''()') == interpreter nilValue