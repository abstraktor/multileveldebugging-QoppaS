toolbuilder
buildLeftEditorWith: builder
	| byteCodeEditorSpec |
	byteCodeEditorSpec := builder pluggableCodePaneSpec new.
	byteCodeEditorSpec
		model: self;
		name: 'leftEditor';
		getText: #leftActivationDefinition;
		selection: #leftActivationDefinitionSelection.
	^byteCodeEditorSpec