as yet unclassified
raiseIfEndingWithNeedle
	self isEndingWithNeedle
		ifTrue: [WaitAndRaiseStreamFoundIt signal: 'got it']