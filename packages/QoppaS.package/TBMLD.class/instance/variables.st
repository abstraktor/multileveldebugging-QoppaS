variables
variables
	self selectedActivation isNil ifTrue: [^{}].
	^self selectedLevel variablesOf: self selectedActivation