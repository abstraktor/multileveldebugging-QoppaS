as yet unclassified
checkAfterWritingFrom: start to: end
	(checkCallback value: self value: start value: end)
		ifTrue: [WaitAndRaiseStreamFoundIt signal: 'got it']
	