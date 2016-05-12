user interface
buildWith: builder
| windowSpec levelListSpec frameListSpec editorSpec stepButtonSpec proceedButtonSpec window |

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
		frame: (0@0 corner: 0.5@0.4).
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
		frame: (0.5@0 corner: 1@0.5).
	windowSpec children add: frameListSpec.
	
	editorSpec := builder pluggableCodePaneSpec new.
	editorSpec
		model: self;
		name: 'editor';
		getText: #activationDefinition;
		selection: #activationSelection;
		frame: (0@0.5 corner: 1@1).
	windowSpec children add: editorSpec.
	
	stepButtonSpec := builder pluggableButtonSpec new.
	stepButtonSpec
		model: self;
		label: 'Step';
		action: #doSend;
		frame: (0.25@0.4 corner: 0.5@0.5).
	windowSpec children add: stepButtonSpec.
	
	proceedButtonSpec := builder pluggableButtonSpec new.
	proceedButtonSpec
		model: self;
		label: 'Proceed';
		action: #doProceed;
		frame: (0@0.4 corner: 0.25@0.5).
	windowSpec children add: proceedButtonSpec.
	
	window := builder build: windowSpec.
	
	styler := (window submorphNamed: #editor) styler.
	
	^window