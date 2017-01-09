inspection
executionProgress
	"Answer the location of the next step in the definitionContent"
	^ contextPart debuggerMap
		rangeForPC: contextPart pc
		contextIsActiveContext: false