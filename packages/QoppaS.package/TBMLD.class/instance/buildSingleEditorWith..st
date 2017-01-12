toolbuilder
buildSingleEditorWith: builder
	^builder pluggableCodePaneSpec new
		model: self;
		name: 'editor';
		getText: #activationDefinition;
		setText: #setActivationDefinition:notifying:;
		selection: #activationSelection;
		yourself