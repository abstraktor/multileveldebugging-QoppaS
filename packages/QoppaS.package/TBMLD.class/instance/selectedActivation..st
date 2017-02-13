selection
selectedActivation: newSelectedActivation
	| oldActivation |
	(newSelectedActivation isNil not and: 
	[newSelectedActivation isInteractionNode]) ifTrue: [newSelectedActivation selected].
	
	oldActivation := self selectedActivation.
	(self maySelectActivation: newSelectedActivation)
		ifTrue: [selectedActivation := newSelectedActivation].
	
	(newSelectedActivation isNil not
		and: [newSelectedActivation isSmalltalkContext]
		"and: [oldActivation isNil not]
		and: [oldActivation isSmalltalkContext]")
		ifTrue: [
			"expand stack if we didn't load this frame yet"
			(newSelectedActivation stackIndex > self debugger contextStack size)
				ifTrue: [self debugger fullyExpandStack].

			self debugger
				contextStackIndex: (newSelectedActivation stackIndex)
				oldContextWas: (oldActivation isSmalltalkContext
					ifTrue: [oldActivation contextPart]
					ifFalse: [nil])].
	
	self updateSelectedActivation.