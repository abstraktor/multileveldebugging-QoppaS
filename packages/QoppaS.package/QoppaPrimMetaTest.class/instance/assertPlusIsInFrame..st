as yet unclassified
assertPlusIsInFrame: aFrame
	"assert that aFrame is an (association) list and that it contains a pair with #+ as key"
	self assert: (aFrame isCons and: [aFrame isProperList]).
	aFrame detect: [:eachBinding | eachBinding car = #+]
		ifNone: [self fail: 'could not find + in global environment']