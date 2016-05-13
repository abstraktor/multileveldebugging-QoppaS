accessing
contextPart: anObject

	contextPart := anObject.
	self at: #timestamp put: anObject method dateMethodLastSubmitted.
	contextPart method pragmas do: [:pragma |
		self at: pragma keyword put: pragma arguments]