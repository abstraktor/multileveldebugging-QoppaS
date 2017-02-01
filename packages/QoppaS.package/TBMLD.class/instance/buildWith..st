toolbuilder
buildWith: builder
| windowSpec |

	windowSpec := self buildWindowWith: builder specs: {
	(0@0 corner: 0.25@0.3) -> [self buildLevelListWith: builder].
	(0.25@0 corner: 1@0.3) -> [self buildActivationListWith: builder].
	(0.3@0.3 corner: 0.475@0.33) -> [builder pluggableButtonSpec new
		model: self;
		label: 'Proceed';
		action: #doProceed;
		yourself].
	(0.475@0.3 corner: 0.65@0.33) -> [builder pluggableButtonSpec new
		model: self;
		label: 'Restart';
		action: #doRestart;
		yourself].
	(0.65@0.3 corner: 0.825@0.33) -> [builder pluggableButtonSpec new
		model: self;
		label: 'Into';
		action: #doInto;
		yourself].
	(0.825@0.3 corner: 1@0.33) -> [ builder pluggableButtonSpec new
		model: self;
		label: 'Over';
		action: #doOver;
		yourself].
	(0@0.33 corner: 1@0.8) -> [self buildSingleEditorWith: builder].
	(0@0.33 corner: 1@0.8) -> [(self verifier buildWith: builder) name: #verifier].
	(0@0.33 corner: 0.5@0.8) -> [self buildLeftEditorWith: builder].
	(0.5@0.33 corner: 1@0.8) -> [self buildRightEditorWith: builder].
	(0@0.8 corner: 1@1) -> [self buildDataInspectorWith: builder].
	}.
	
	window := builder build: windowSpec.
	
	leftEditorMorph := window submorphNamed: #leftEditor.
	rightEditorMorph := window submorphNamed: #rightEditor.
	editorMorph := window submorphNamed: #editor.
	verifierMorph := window submorphNamed: #verifier.
	styler := editorMorph styler.
	self changed: #activationDefinition.
	
	^window