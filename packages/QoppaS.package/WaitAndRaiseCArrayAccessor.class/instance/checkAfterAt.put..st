as yet unclassified
checkAfterAt: index put: value
	(checkCallback value: index value: value)
		ifTrue: [WaitAndRaiseFoundIt signal: 'got it']