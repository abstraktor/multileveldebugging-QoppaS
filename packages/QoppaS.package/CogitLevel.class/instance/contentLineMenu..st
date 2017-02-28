as yet unclassified
contentLineMenu: aMenu
	^aMenu addList: #(
		('debug assembly of this bytecode (Bytecode to HIL)' doDebugAssemblerOfThisBytecode)
		('debug concretization of this bytecode (HIL to machine code)' doDebugConcretizationOfThisBytecode)
		-
		('debug generation of this line' doDebugDisassemblerOfThisLine)
		"('set execution pointer here' doSetPc)")
		yourself
	