toolbuilder
selectedActivationChanged
	| methodNode |
	self repo selectedActivation isActualContextNode ifFalse: [^self].
	methodNode := self repo selectedActivation contextPart method methodNode.
	methodNode generateWithTempNames.
	rootNode := ParserNodeToTreeNodeConverter convert: methodNode.

	self changed: #roots.
	self changed: #contentChildrenOf:.
	self changed: #contentHasChildren:.
	self changed: #contentNodeLabelOf:.
	self changed: #selectedPathBasedOnPc.
	self changed: #getSelected.