as yet unclassified
buildWith: builder
| windowSpec levelListSpec frameListSpec editorSpec |

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
		frame: (0@0 corner: 0.5@0.4).
	windowSpec children add: levelListSpec.
	
	frameListSpec := builder pluggableTreeSpec new.
	frameListSpec
		model: self;
		roots: #contexts;
		icon: #contextIcon:;
		label: #contextLabel:;
		getSelected: #selectedContext;
		setSelected: #selectedContext:;
		getChildren: #contextChildren:;
		hasChildren: #contextHasChildren:;
		frame: (0.5@0 corner: 1@0.5).
	windowSpec children add: frameListSpec.
	
	editorSpec := builder pluggableCodePaneSpec new.
	editorSpec
		model: self;
		getText: #contextCode;
		frame: (0@0.5 corner: 1@1).
	windowSpec children add: editorSpec.
	
	^builder build: windowSpec