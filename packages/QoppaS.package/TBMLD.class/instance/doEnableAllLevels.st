actions
doEnableAllLevels
	self levelRepo disabledLevels: {}.
	self changed: #levels.