as yet unclassified
detect: aForm

	^ self
		detect: aForm
		ifNone: [self error: 'Icon is not in the library.']