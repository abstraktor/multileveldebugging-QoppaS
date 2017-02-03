toolbuilder
selectedPathBasedOnPc
	"we leave out the block node"
	| currentNode path |
	currentNode := self getSelected.
	
	path := OrderedCollection new.
	[currentNode ~= nil] whileTrue: [
		path add: currentNode.
		currentNode := currentNode root].

	"remember to skip the root methodNode and its blockNode"
	^path reversed allButFirst: 2
	
	"^(ParserNodeSelectionPathFinder
		forMethod: self repo selectedActivation contextPart method
		findPathToPc: self repo selectedActivation contextPart pc)
		allButFirst"