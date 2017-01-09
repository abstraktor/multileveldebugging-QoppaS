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
			"expand stack if we didn't load this frame yet"
			(newSelectedActivation stackIndex > self debugger contextStackIndex)
				ifTrue: [self debugger fullyExpandStack].

			self debugger
				contextStackIndex: (newSelectedActivation stackIndex)
				oldContextWas: oldActivation contextPart].
	
	self updateSelectedActivation.