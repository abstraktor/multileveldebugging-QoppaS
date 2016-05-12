as yet unclassified
groupNodes: aCollectionOfContextNodes
	| collectedNodes |
	collectedNodes := OrderedCollection new.
	^ Array streamContents: [:out |
		aCollectionOfContextNodes do: [:eachNode |
			self assert: eachNode isSmalltalkContext
				description: self class name, ' can only group Smalltalk contexts'.
			eachNode contextPart method == (QoppaInterpreter >> #eval:in:)
				ifTrue: [
					out nextPut: (self createQoppaEvalNodeFrom: eachNode withChildren: collectedNodes).
					collectedNodes removeAll ]
				ifFalse: [collectedNodes add: eachNode]].
		out nextPutAll: collectedNodes]