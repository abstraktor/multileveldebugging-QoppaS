levels
disabledLevels: collectionOfLevelNames
	self levelAnnotationMap enableAll.
	collectionOfLevelNames do: [:levelName|
		self levelAnnotationMap annotate: levelName disabled: true]