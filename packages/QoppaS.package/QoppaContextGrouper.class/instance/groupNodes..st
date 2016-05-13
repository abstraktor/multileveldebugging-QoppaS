grouping
groupNodes: aCollectionOfContextNodes
	inputNodes := aCollectionOfContextNodes asQoppaList.
	^ Array streamContents: [:out | self transformNodes: out]