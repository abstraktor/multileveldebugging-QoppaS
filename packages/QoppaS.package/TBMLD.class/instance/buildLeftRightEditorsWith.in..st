user interface
buildLeftRightEditorsWith: builder in: windowSpec
	| byteCodeEditorSpec cogitEditorSpec |
	byteCodeEditorSpec := builder pluggableCodePaneSpec new.
	byteCodeEditorSpec
		model: self;
		name: 'leftEditor';
		getText: #leftActivationDefinition;
		selection: #leftActivationDefinitionSelection;
		frame: (0@0.47 corner: 0.4@1).
	windowSpec children add: byteCodeEditorSpec.
	
	cogitEditorSpec := builder pluggableCodePaneSpec new.
	cogitEditorSpec
		model: self;
		name: 'rightEditor';
		getText: #activationDefinition;
		selection: #activationSelection;
		frame: (0.4@0.47 corner: 0.75@1).
	windowSpec children add: cogitEditorSpec.