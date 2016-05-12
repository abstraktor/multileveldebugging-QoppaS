data extraction
finishLastQoppaNodeWithEval: aSmalltalkContextNode
	| evalContextPart expression |
	lastQoppaNode ifNil: [^ self].
	evalContextPart := aSmalltalkContextNode contextPart.
	lastQoppaNode at: #evalSmalltalkContext put: evalContextPart.
	lastQoppaNode rangeForPC: (self rangeForPC: evalContextPart).
	expression := evalContextPart arguments first.
	lastQoppaNode summary: 'Qoppa: ', expression qoppaPrintString.
	lastQoppaNode := nil