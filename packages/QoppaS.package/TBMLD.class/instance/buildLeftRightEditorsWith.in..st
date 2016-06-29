user interface
buildLeftRightEditorsWith: builder in: windowSpec
	| byteCodeEditorSpec cogitEditorSpec |
	byteCodeEditorSpec := builder pluggableCodePaneSpec new.
	byteCodeEditorSpec
		model: self;
		name: 'leftEditor';
		getText: #leftActivationDefinition;
		frame: (0@0.5 corner: 0.5@1).
	windowSpec children add: byteCodeEditorSpec.
	
	cogitEditorSpec := builder pluggableCodePaneSpec new.
	cogitEditorSpec
		model: self;
		name: 'rightEditor';
		getText: #activationDefinition;
		selection: #activationSelection;
		frame: (0.5@0.5 corner: 1@1).
	windowSpec children add: cogitEditorSpec.