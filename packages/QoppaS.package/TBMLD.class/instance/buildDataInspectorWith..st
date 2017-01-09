toolbuilder
buildDataInspectorWith: builder
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	treeSpec
		model: self;
		nodeClass: MLDObjectExplorerWrapper;
		roots: #variables;
		autoDeselect: false;
		columns: {95. nil}.
	^treeSpec.