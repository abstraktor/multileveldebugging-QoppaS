toolbuilder
buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'MLD: ', self signaledError asString;
		extent: 700@400;
		children: OrderedCollection new.
	^windowSpec