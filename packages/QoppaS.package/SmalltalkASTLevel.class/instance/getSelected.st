toolbuilder
getSelected
	| pc |
	pc := self repo selectedActivation contextPart pc.
	^rootNode nodesDetect: [:each| each content pc = pc]