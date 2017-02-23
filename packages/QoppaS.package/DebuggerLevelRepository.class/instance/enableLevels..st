levels
enableLevels: collectionOfLevelNames
	collectionOfLevelNames do: [:levelName|
		self levelAnnotationMap annotate: levelName disabled: false]