variables
variables
	self selectedActivation isNil ifTrue: [^{}].
	^self selectedActivation variables associations asSortedArray