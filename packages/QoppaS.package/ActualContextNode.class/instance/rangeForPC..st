inspection
rangeForPC: isActive
	^self contextPart pc
		ifNil: [0 to: 0]
		ifNotNil: [self contextPart debuggerMap
			rangeForPC: self contextPart pc contextIsActiveContext: isActive]