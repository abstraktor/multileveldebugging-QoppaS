toolbuilder
historyMenu: aMenu
	^ aMenu addList: {
			#('redo' 				doRedoHistoryItem).
			#('debug' 				doDebugHistoryItem).
		};
		yourself