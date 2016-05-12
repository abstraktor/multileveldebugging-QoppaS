grouping
transformNodes: outputNodes

	self class mldGroupingEnabled
		ifFalse: [^outputNodes nextPutAll: inputNodes].

	self flushCollectedNodes.
	inputNodes consListDo: [:each |
		self assert: each car isSmalltalkContext
			description: self class name, ' can only group Smalltalk contexts'.
		((each car at: #labelGrouper ifAbsent: [nil]) == #start)
			ifTrue: [self finishLastQoppaNodeBefore: each.
				outputNodes nextPut: (lastQoppaNode :=
					self
						createQoppaContextNodeFrom: each 
						withChildren: self flushCollectedNodes)]
			ifFalse: [self collectNode: each car].
		((each car at: #labelGrouper ifAbsent: [nil]) == #error)
			ifTrue: [outputNodes nextPut: (self createErrorNodeFrom: each car withChildren: self flushCollectedNodes)].
		((each car at: #labelGrouper ifAbsent: [nil]) == #end)
			ifTrue: [self finishLastQoppaNodeWithEval: each car]].
	outputNodes nextPutAll: (self flushCollectedNodes ifNil: [{}])