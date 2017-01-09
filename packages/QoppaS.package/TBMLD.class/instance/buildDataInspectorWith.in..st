user interface
buildDataInspectorWith: builder in: windowSpec
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	treeSpec
		model: self;
		nodeClass: MLDObjectExplorerWrapper;
		roots: #variables;
		autoDeselect: false;
		columns: {95. nil};
		frame: (0.75@0.47 corner: 1@1).
	windowSpec children add: treeSpec.