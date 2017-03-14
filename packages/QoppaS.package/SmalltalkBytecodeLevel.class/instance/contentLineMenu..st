toolbuilder
contentLineMenu: aMenu
	^aMenu addList: #(
		('debug assembly of this bytecode' doDebugAssemblerOfThisBytecode)
		('debug generation of this line' doDebugDisassemblerOfThisLine)
		('verify implementations of this bytecode' doVerify)
		-
		('set execution pointer here' doSetPc));
		yourself
	