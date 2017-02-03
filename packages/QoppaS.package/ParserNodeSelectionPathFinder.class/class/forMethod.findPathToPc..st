as yet unclassified
forMethod: aCompiledMethod findPathToPc: pc
	| methodNode |
	methodNode := aCompiledMethod methodNode.
	
	"generate annotates the pc on the nodes"
	methodNode generate.
	
	[self new
		pc: pc;
		visitMethodNode: methodNode]
	on: Notification do: [:e | ^e messageText].

	^{}
		