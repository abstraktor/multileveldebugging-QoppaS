toolbuilder
selectedPathBasedOnPc
	| curIndex nodes path pc |
	pc := self repo selectedActivation contextPart pc.
	nodes := self statementsOfSelectedActivation.
	path := OrderedCollection new.
	curIndex := 1.
	[0 < nodes size] whileTrue: [
		[(nodes at: curIndex) pc < pc] whileTrue: 
			[curIndex := curIndex +1].
	
		path add: curIndex.
			((nodes at: curIndex) pc = pc)
			ifTrue: [^path]
			ifFalse: ["it must be in my kids"
				nodes := self contentChildrenOf: (nodes at: curIndex).
				curIndex := 1]].
		
	^{}