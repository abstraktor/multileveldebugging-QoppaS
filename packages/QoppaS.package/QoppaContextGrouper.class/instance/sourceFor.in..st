data extraction
sourceFor: anOperative in: aQoppaContextNode
	^ anOperative isPrimitive 
		ifTrue: [(self findPrimitiveContextBelow: aQoppaContextNode) ifNotNil: [:its | its definitionContent]] 
		ifFalse: [anOperative source]