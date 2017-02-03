as yet unclassified
visitMethodNode: aMethodNode
	"this is the root"
	
	"we borrow the comment property to annotate each node with the path to it"
	aMethodNode comment: OrderedCollection new.
	
	"now the regular stuff"
	self checkPc: aMethodNode.
	
	aMethodNode block comment: (aMethodNode comment copyWith: 1).
	aMethodNode block accept: self