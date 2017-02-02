selection
selectedActivation
	^selectedActivation ifNil: (self selectedActivations isEmpty
		ifTrue: [self activations first]
		ifFalse: [self selectedActivations first])