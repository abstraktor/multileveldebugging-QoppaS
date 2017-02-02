toolbuilder
contentViewerSpecsWith: builder
	^{
		#smalltalkBytecode -> {
			(0@0 corner: 1@0.8) -> [ builder pluggableListSpec new
				model: self;
				list: #contentLines;
				getIndex: #selectedContentLineIndex;
				setIndex: #selectedContentLineIndex:;
				menu: #contentLineMenu:;
				yourself]
			}
	}