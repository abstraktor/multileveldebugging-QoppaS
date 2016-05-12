activations
maySelectActivation: activation
	activation ifNil: [^false].
	
	activation root ifNotNil: [ ^self maySelectActivation: activation root ].
	
	^(self activations includes: activation)
		or: [self selectedActivations includes: activation]