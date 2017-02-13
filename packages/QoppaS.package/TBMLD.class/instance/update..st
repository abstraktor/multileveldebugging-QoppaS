events
update: what
	(what == #resultsArray) ifTrue: [^self updateActivations].
	
	(what == #verifierConfirmDebug) ifTrue: [
		self updateActivations.
		^self selectedActivation: self selectedActivations first].
	(what == #verifierConfirmDisableChecking) ifTrue: [^self disableVerifier].
	(what == #verifierConfirmNoAction) ifTrue: [^self verifier reset].