as yet unclassified
testBindLeftNil
	self should: [interpreter bind: nil to: 1]
		raise: QoppaArityMismatchError