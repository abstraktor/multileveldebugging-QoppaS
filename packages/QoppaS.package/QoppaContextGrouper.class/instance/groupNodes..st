as yet unclassified
groupNodes: aCollectionOfContextNodes
	| collectedNodes latestOperateNode |
	collectedNodes := OrderedCollection new.
	^ Array streamContents: [:out |
		aCollectionOfContextNodes do: [:eachNode |
			self assert: eachNode isSmalltalkContext
				description: self class name, ' can only group Smalltalk contexts'.
			eachNode contextPart method == (QoppaInterpreter >> #operate:on:in:)
				ifTrue: [
					out nextPut: (latestOperateNode :=
						self
							createQoppaContextNodeFrom: eachNode 
							withChildren: collectedNodes).
					collectedNodes removeAll ]
				ifFalse: [collectedNodes add: eachNode].
			eachNode contextPart method protocol = #'qoppa-errors'
				ifTrue: [out nextPut: (self createErrorNodeFrom: eachNode withChildren: collectedNodes).
					collectedNodes removeAll].
			eachNode contextPart method == (QoppaSexprSemantic >> #eval:in:)
				ifTrue: [latestOperateNode
					ifNotNil: [self provideContextFor: latestOperateNode basedOn: eachNode.
						latestOperateNode := nil]]].
		out nextPutAll: collectedNodes]