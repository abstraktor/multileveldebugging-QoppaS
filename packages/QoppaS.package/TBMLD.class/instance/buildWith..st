user interface
buildWith: builder
| windowSpec levelListSpec frameListSpec editorSpec proceedButtonSpec intoButtonSpec overButtonSpec restartButtonSpec |

	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'MLD: ', self signaledError asString;
		extent: 700@400;
		children: OrderedCollection new.
	
	levelListSpec := builder pluggableTreeSpec new.
	levelListSpec
		model: self;
		roots: #levels;
		icon: #levelIcon:;
		label: #label:;
		getSelected: #selectedLevel;
		setSelected: #selectedLevel:;
		menu: #levelMenu:;
		frame: (0@0 corner: 0.3@0.4).
	windowSpec children add: levelListSpec.
	
	frameListSpec := builder pluggableTreeSpec new.
	frameListSpec
		model: self;
		roots: #selectedActivations;
		icon: #activationIcon:;
		label: #activationLabel:;
		getSelected: #selectedActivation;
		setSelected: #selectedActivation:;
		getChildren: #activationChildren:;
		hasChildren: #activationHasChildren:;
		menu: #activationMenu:;
		frame: (0.3@0 corner: 1@0.4).
	windowSpec children add: frameListSpec.
	
	editorSpec := builder pluggableCodePaneSpec new.
	editorSpec
		model: self;
		name: 'editor';
		getText: #activationDefinition;
		selection: #activationSelection;
		frame: (0@0.47 corner: 0.75@1).
	windowSpec children add: editorSpec.
	
	proceedButtonSpec := builder pluggableButtonSpec new.
	proceedButtonSpec
		model: self;
		label: 'Proceed';
		action: #doProceedComparing;
		frame: (0.3@0.4 corner: 0.475@0.47).
	windowSpec children add: proceedButtonSpec.
	
	restartButtonSpec := builder pluggableButtonSpec new.
	restartButtonSpec
		model: self;
		label: 'Restart';
		action: #doRestart;
		frame: (0.475@0.4 corner: 0.65@0.47).
	windowSpec children add: restartButtonSpec.
	
	intoButtonSpec := builder pluggableButtonSpec new.
	intoButtonSpec
		model: self;
		label: 'Into';
		action: #doInto;
		frame: (0.65@0.4 corner: 0.825@0.47).
	windowSpec children add: intoButtonSpec.
	
	overButtonSpec := builder pluggableButtonSpec new.
	overButtonSpec
		model: self;
		label: 'Over';
		action: #doOver;
		frame: (0.825@0.4 corner: 1@0.47).
	windowSpec children add: overButtonSpec.
	
	self buildLeftRightEditorsWith: builder in: windowSpec.
	self buildDataInspectorWith: builder in: windowSpec.
	
	window := builder build: windowSpec.
	
	leftEditorMorph := window submorphNamed: #leftEditor.
	rightEditorMorph := window submorphNamed: #rightEditor.
	editorMorph := window submorphNamed: #editor.
	styler := editorMorph styler.
	self changed: #activationDefinition.
	
	^window