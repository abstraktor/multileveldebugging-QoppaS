toolbuilder
buildWith: builder
| windowSpec |

	windowSpec := self buildWindowWith: builder specs: {
	(0@0 corner: 0.3@0.4) -> [self buildLevelListWith: builder].
	(0.3@0 corner: 1@0.4) -> [self buildActivationListWith: builder].
	(0@0.47 corner: 0.75@1) -> [self buildSingleEditorWith: builder].
	(0.3@0.4 corner: 0.475@0.47) -> [builder pluggableButtonSpec new
		model: self;
		label: 'Proceed';
		action: #doProceedComparing;
		yourself].
	(0.475@0.4 corner: 0.65@0.47) -> [builder pluggableButtonSpec new
		model: self;
		label: 'Restart';
		action: #doRestart;
		yourself].
	(0.65@0.4 corner: 0.825@0.47) -> [builder pluggableButtonSpec new
		model: self;
		label: 'Into';
		action: #doInto;
		yourself].
	(0.825@0.4 corner: 1@0.47) -> [ builder pluggableButtonSpec new
		model: self;
		label: 'Over';
		action: #doOver;
		yourself].
	(0@0.47 corner: 0.4@1) -> [self buildLeftEditorWith: builder].
	(0.4@0.47 corner: 0.75@1) -> [self buildRightEditorWith: builder].
	(0.75@0.47 corner: 1@1) -> [self buildDataInspectorWith: builder].
	}.
	
	window := builder build: windowSpec.
	
	leftEditorMorph := window submorphNamed: #leftEditor.
	rightEditorMorph := window submorphNamed: #rightEditor.
	editorMorph := window submorphNamed: #editor.
	styler := editorMorph styler.
	self changed: #activationDefinition.
	
	^window