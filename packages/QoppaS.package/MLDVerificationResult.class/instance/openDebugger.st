as yet unclassified
openDebugger

	self failedWithException ifTrue: [^TBMLD openForError: self exception].
  
	^TBMLD step: (verifier resultGeneratingBlockFor: self) configured: [:tbmld| tbmld disableVerifier]