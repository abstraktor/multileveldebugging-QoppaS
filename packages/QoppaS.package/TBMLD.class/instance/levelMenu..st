actions
levelMenu: aMenu
	^ aMenu addList: #(
			('inspect' 				inspectLevel)
			('enable all levels'          doEnableAllLevels));
		yourself