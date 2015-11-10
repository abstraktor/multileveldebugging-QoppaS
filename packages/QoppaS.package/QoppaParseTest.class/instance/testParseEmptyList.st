as yet unclassified
testParseEmptyList
	self assert: (QoppaWCons new isQuoted: true; yourself) equals: (self operate: '''()').