as yet unclassified
runDebugged: aBlock 
	^aBlock on: UnhandledError do: [:ue| self openForError: ue exception]