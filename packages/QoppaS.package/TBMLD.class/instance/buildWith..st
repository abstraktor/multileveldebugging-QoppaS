toolbuilder
buildWith: builder
| windowSpec specs contentArea viewerSpecs |
	specs := OrderedCollection newFrom: {
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
	}.
	
	contentArea :=  (0@0.33 corner: 1@1).
	viewerSpecs := (self contentViewerSpecsWith: builder).
	viewerSpecs values concatenation do: [:spec|
		specs add: (Rectangle
			origin: contentArea origin + ((spec key) origin * contentArea extent)
			extent:  contentArea extent * spec key extent) -> (spec value)].
	windowSpec := self buildWindowWith: builder specs: specs.
	
	window := builder build: windowSpec.
	
	self viewerMorphs: Dictionary new.
	(viewerSpecs keysAndValuesDo: [:name :viewer | 
		viewer doWithIndex: [:spec :i | | name_i |
			name_i := (name, '_', i) asSymbol.
			self viewerMorphs
				at: name_i
				put: (window submorphNamed: name_i)]]).

	leftEditorMorph := window submorphNamed: #double_1.
	rightEditorMorph := window submorphNamed: #double_2.
	editorMorph := window submorphNamed: #smalltalk_1.
	verifierMorph := window submorphNamed: #verifier_1.
	styler := editorMorph styler.

	self changed: #activationDefinition.
	
	^window