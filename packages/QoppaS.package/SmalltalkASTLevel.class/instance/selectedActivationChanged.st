toolbuilder
selectedActivationChanged
	self repo selectedActivation isActualContextNode ifFalse: [^self].
	rootNode := ParserNodeToTreeNodeConverter convert: self generateMethodNode.

	self changed: #roots.
	self changed: #contentChildrenOf:.
	self changed: #contentHasChildren:.
	self changed: #contentNodeLabelOf:.
	self changed: #selectedPathBasedOnPc.
	self changed: #getSelected.