toolbuilder
contentViewerSpecsWith: builder
	^{
		#smalltalkParseNode -> {
			(0@0 corner: 1@1) -> [ builder pluggableTreeSpec new
				model: self;
				roots: #roots;
				getChildren: #contentChildrenOf:;
				hasChildren: #contentHasChildren:;
				label: #contentNodeLabelOf:;
				getSelected: #getSelected;
				setSelected: #setSelected:;
				getSelectedPath: #selectedPathBasedOnPc;
				menu: #astMenu:;
				yourself]
			}
	}