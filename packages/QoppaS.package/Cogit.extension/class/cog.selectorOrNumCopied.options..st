*QoppaS-Verifier
cog: aCompiledMethod selectorOrNumCopied: selectorOrNumCopied options: optionsDictionaryOrArray
	"StackToRegisterMappingCogit cog: (Integer >> #benchFib) selector: #benchFib options: #(COGMTVM false)"
	| cogit coInterpreter tmpDebugConcretizationOf |
	cogit := self instanceForTests: optionsDictionaryOrArray.
	(aCompiledMethod respondsTo: #tempNames) ifTrue:
		[initializationOptions at: #tempNames put: aCompiledMethod tempNames].
	coInterpreter := CurrentImageCoInterpreterFacade forCogit: cogit.
	
	tmpDebugConcretizationOf := Cogit debugConcretizationOf.
	Initializing := true.
	[cogit
		setInterpreter: coInterpreter;
		singleStep: true;
		initializeCodeZoneFrom: 1024 upTo: coInterpreter memory size / 2. "leave space for rump C stack"
	 cogit methodZone freeStart: (cogit methodZone freeStart roundUpTo: 1024)]
		on: Notification
		do: [:ex|
			(ex messageText beginsWith: 'cannot find receiver for') ifTrue:
				[ex resume: coInterpreter].
			ex pass].
	Initializing := false.
	Cogit debugConcretizationOf: tmpDebugConcretizationOf.
	^{ coInterpreter.
		cogit.
		selectorOrNumCopied isInteger
			ifTrue: [ cogit cogFullBlockMethod: (coInterpreter oopForObject: aCompiledMethod) numCopied: selectorOrNumCopied ]
			ifFalse: [ cogit cog: (coInterpreter oopForObject: aCompiledMethod) selector: (coInterpreter oopForObject: selectorOrNumCopied) ] }