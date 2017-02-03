as yet unclassified
checkPc: aParserNode
	aParserNode pc = pc ifTrue: [Notification signal: aParserNode comment]