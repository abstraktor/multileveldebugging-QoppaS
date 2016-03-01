grouping
transformNodes: outputNodes
	self flushCollectedNodes.
	inputNodes consListDo: [:each |
		self assert: each car isSmalltalkContext
			description: self class name, ' can only group Smalltalk contexts'.
		each car contextPart method == (QoppaInterpreter >> #operate:on:in:)
			ifTrue: [self finishLastQoppaNodeBefore: each.
				outputNodes nextPut: (lastQoppaNode :=
					self
						createQoppaContextNodeFrom: each 
						withChildren: self flushCollectedNodes)]
			ifFalse: [self collectNode: each car].
		each car contextPart method protocol = #'qoppa-errors'
			ifTrue: [outputNodes nextPut: (self createErrorNodeFrom: each car withChildren: self flushCollectedNodes)].
		each car contextPart method == (QoppaInterpreter >> #eval:in:)
			ifTrue: [self finishLastQoppaNodeWithEval: each car]].
	outputNodes nextPutAll: (self flushCollectedNodes ifNil: [{}])