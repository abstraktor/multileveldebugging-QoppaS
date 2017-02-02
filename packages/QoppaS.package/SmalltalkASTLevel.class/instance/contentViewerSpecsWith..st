toolbuilder
contentViewerSpecsWith: builder
	^{
		#smalltalkParseNode -> {
			(0@0 corner: 1@1) -> [ builder pluggableTreeSpec new
				model: self;
				roots: #statementsOfSelectedActivation;
				getChildren: #contentChildrenOf:;
				hasChildren: #contentHasChildren:;
				label: #contentNodeLabelOf:;
				getSelectedPath: #selectedPathBasedOnPc:;
				yourself]
			}
	}