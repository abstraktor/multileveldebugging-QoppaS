contexts
contextCode
	^self selectedContext
		ifNotNil: [:frame | frame definitionContent]