verifier
enableVerifier
	verifier := self levelRepo verifier.
	verifier addDependent: self.
	self updateActivations.
	^verifier