toolbuilder
contentLineMenu: aMenu
	^aMenu addList: #(
		('debug assembly of this bytecode' doDebugAssemblerOfThisBytecode)
		('debug generation of this line' doDebugDisassemblerOfThisLine)
		('set execution pointer here' doSetPc)
		-
		('verify implementations of this bytecode' doVerify));
		yourself
	