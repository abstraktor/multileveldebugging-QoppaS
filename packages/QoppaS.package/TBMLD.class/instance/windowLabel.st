toolbuilder
windowLabel
	signaledError ifNil: [^(self activations at: 1) summary].
	
	^signaledError messageText