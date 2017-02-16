as yet unclassified
checkAfterAt: index put: value
	(self checkCallback value: index value: value)
		ifTrue: [WaitAndRaiseFoundIt signal: 'got it']