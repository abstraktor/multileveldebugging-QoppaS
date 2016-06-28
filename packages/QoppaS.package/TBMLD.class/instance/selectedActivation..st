activations
selectedActivation: newSelectedActivation
	| oldActivation |
	oldActivation := self selectedActivation.
	(self maySelectActivation: newSelectedActivation)
		ifTrue: [selectedActivation := newSelectedActivation].
		
	
	(newSelectedActivation isNil not
		and: [newSelectedActivation isSmalltalkContext]
		and: [oldActivation isSmalltalkContext])
		ifTrue: [
			self debugger
				contextStackIndex: (newSelectedActivation stackIndex)
				oldContextWas: oldActivation contextPart].
	
	self updateSelectedActivation.