as yet unclassified
checkAfterWritingFrom: start to: end
	(checkCallback value: self value: start value: end)
		ifTrue: [WaitAndRaiseFoundIt signal: 'got it']
	