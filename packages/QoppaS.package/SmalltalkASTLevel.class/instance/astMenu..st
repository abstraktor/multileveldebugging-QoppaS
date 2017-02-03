toolbuilder
astMenu: aMenu
	^aMenu addList: #(
		('debug assembly of this parse node' doDebugAssemblerOfThisParseNode)
		"('debug generation of this line' doDebugDisassemblerOfThisLine)"
		('set execution pointer here' doSetPc));
		yourself