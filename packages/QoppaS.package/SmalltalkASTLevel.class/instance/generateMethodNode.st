actions
generateMethodNode
	| methodNode |
	methodNode := self repo selectedActivation contextPart method methodNode.
	methodNode generateWithTempNames.
	
	^methodNode