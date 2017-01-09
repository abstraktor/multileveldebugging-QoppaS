accessing
contextPart: anObject

	contextPart := anObject.
	self at: #timestamp put: anObject method dateMethodLastSubmitted;
		variables: (anObject tempNames withIndexCollect: [:name :tmpIndex|
			name -> (anObject debuggerMap namedTempAt: tmpIndex in: anObject)]).

	contextPart method pragmas do: [:pragma |
		self at: pragma keyword put: pragma arguments]