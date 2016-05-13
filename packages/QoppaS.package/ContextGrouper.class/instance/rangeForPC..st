as yet unclassified
rangeForPC: aMethodContext 
	^aMethodContext pc
		ifNil: [0 to: 0]
		ifNotNil: [aMethodContext debuggerMap
			rangeForPC: aMethodContext pc contextIsActiveContext: false]