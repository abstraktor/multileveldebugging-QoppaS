verifier
enableVerifier
	verifier := MLDComparingVerifier new.
	self updateActivations.
	^verifier