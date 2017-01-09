toolbuilder
buildSingleEditorWith: builder
	^builder pluggableCodePaneSpec new
		model: self;
		name: 'editor';
		getText: #activationDefinition;
		selection: #activationSelection;
		yourself