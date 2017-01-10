toolbuilder
buildWith: builder
	| resultList |
	resultList := builder pluggableTreeSpec new.
	resultList
		model: self;
		nodeClass: MLDObjectExplorerWrapper;
		roots: #resultsArray;
		setSelected: #debugResult:;
		columns: {[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
				nil "take all the space"}.
		
	^resultList
		