toolbuilder
buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: #windowLabel;
		extent: 600@700;
		children: OrderedCollection new.
	^windowSpec