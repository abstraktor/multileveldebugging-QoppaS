toolbuilder
buildDataInspectorWith: builder
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	treeSpec
		model: self;
		nodeClass: MLDObjectExplorerWrapper;
		roots: #variables;
		setSelected: #variableSelected:;
		autoDeselect: false;
		columns: {90. nil}.
	^treeSpec.