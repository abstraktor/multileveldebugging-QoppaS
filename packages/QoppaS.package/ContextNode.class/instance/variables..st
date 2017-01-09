accessing
variables: variables
	self at: #variables
		put: (variables isDictionary
			ifFalse: [Dictionary newFrom: variables]
			ifTrue: [variables])