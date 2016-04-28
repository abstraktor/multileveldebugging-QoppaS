contexts
contexts
	^self selectedLevel
		ifNil: [self stack]
		ifNotNil: [
			QoppaContextGrouper new groupNodes: 
				((self stack
					select: [:context | self selectedLevel includesMethodReference: context method methodReference ])
					collect: [:context| QoppaMLDFrameRepresentation
						for: context
						in: (self levelRepo levelOf: context)
						at: 0])]