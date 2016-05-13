as yet unclassified
collectBindingsFromEnvironment: anEnvironmentCons
	| alreadyCollected |
	self flag: #bindingImplementationDetail.
	alreadyCollected := OrderedCollection new.
	^ anEnvironmentCons "allButLast" gather: [:eachFrame |
		Array streamContents: [:associations |
			eachFrame do: [:eachBinding |
				(alreadyCollected includes: eachBinding car)
					ifFalse: [ alreadyCollected add: eachBinding car.
						associations nextPut: eachBinding car -> eachBinding cadr]]]]