initialize-release
initiallySelectedActivation: detectionBlock
	(self selectedActivations detect: detectionBlock)
		ifNotNil: [:activation|
			self selectedActivation: activation.
			(window submorphNamed: #activationList)
				vScrollBar scrollDown: (self selectedActivations indexOf: activation) -1]