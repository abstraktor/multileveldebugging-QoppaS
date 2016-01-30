as yet unclassified
groupNodes: aCollectionOfContextNodes
	| collectedNodes latestOperateNode |
	collectedNodes := OrderedCollection new.
	^ Array streamContents: [:out |
		aCollectionOfContextNodes do: [:eachNode |
			self assert: eachNode isSmalltalkContext
				description: self class name, ' can only group Smalltalk contexts'.
			eachNode contextPart method == (QoppaSexprSemantic >> #operate:on:in:)
				ifTrue: [
					out nextPut: (latestOperateNode :=
						self
							createQoppaContextNodeFrom: eachNode 
							withChildren: collectedNodes).
					collectedNodes removeAll ]
				ifFalse: [collectedNodes add: eachNode].
			eachNode contextPart method == (QoppaSexprSemantic >> #eval:in:)
				ifTrue: [latestOperateNode
					ifNotNil: [self provideContextFor: latestOperateNode basedOn: eachNode.
						latestOperateNode := nil]]].
		out nextPutAll: collectedNodes]