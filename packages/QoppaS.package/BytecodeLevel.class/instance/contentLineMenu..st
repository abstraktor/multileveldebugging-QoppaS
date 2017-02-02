toolbuilder
contentLineMenu: aMenu
	^aMenu addList: #(
		('debug assembly of this bytecode' doDebugAssemblerOfThisBytecode)
		('debug generation of this line' doDebugDisassemblerOfThisLine));
		yourself
	