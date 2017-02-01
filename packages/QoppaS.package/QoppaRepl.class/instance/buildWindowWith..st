toolbuilder
buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: #windowLabel;
		extent: 400@400;
		children: OrderedCollection new.
	^windowSpec