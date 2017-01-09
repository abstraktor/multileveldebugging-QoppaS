toolbuilder
buildRightEditorWith: builder
	| cogitEditorSpec |
	cogitEditorSpec := builder pluggableCodePaneSpec new.
	cogitEditorSpec
		model: self;
		name: 'rightEditor';
		getText: #activationDefinition;
		selection: #activationSelection.
	^cogitEditorSpec