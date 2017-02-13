toolbuilder
historyMenu: aMenu
	^ aMenu addList: {
			#('redo' 				doRedoHistoryItem).
		};
		yourself