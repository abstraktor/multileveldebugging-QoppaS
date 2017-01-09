toolbuilder
buildWith: builder
	| resultList |
	resultList := builder pluggableTreeSpec new.
	resultList
		model: self;
		nodeClass: MLDObjectExplorerWrapper;
		roots: #results;
		setSelected: #debugResult:.
		
	^resultList
		