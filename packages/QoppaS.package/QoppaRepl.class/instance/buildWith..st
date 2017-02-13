toolbuilder
buildWith: builder 
	| window windowSpec |
	windowSpec := self
				buildWindowWith: builder specs: {
		(0@0 corner: 1.0@0.9) -> [builder pluggableListSpec new
			model: self;
			name: 'historylist';
			list: #history;
			menu: #historyMenu:;
			yourself].
		(0@0.9 corner: 0.9@1.0) -> [builder pluggableTextSpec new
			model: self;
			name: 'replInput';
			getText: #input;
			setText: #readAndEvaluateInput;
			editText: #input:;
			yourself].
		(0.9@0.9 corner: 1.0@1.0) -> [builder pluggableButtonSpec new
			model: self;
			action: #readAndEvaluateInput;
			label: 'eval';
			yourself].
	}.
	window := builder build: windowSpec.
	^ window