activations
generateActivationsFor: activations
	^activations collect: [:activation|
		((self includes: activation) and: [(activation at: #primitive: ifAbsent: nil) isNil not])
			ifFalse: [activation]
			ifTrue: [self cNodeForActivation: activation]]