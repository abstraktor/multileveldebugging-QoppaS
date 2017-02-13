activations
generateActivationsFor: activations
	^activations collect: [:activation|
		(self includes: activation)
			ifFalse: [activation]
			ifTrue: [self cNodeForActivation: activation]]