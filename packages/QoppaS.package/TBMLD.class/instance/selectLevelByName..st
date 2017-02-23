initialize-release
selectLevelByName: levelName
	| level |
	level := self levelRepo levels detect: [:detLevel| detLevel levelName = levelName].
	
	self enableLevels: {levelName}.
	self selectedLevel: level.