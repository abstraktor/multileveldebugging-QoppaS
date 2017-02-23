initialize-release
enableLevels: collectionOfLevelNames
	self levelRepo enableLevels: collectionOfLevelNames.
	self changed: #levels.