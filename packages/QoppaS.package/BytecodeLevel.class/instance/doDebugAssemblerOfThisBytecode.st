toolbuilder
doDebugAssemblerOfThisBytecode
	"debugs the code that translates the smalltalk human-friendly code into smalltalk bytecode"
	| aClass context method methodNode |
	
	"aStream := WaitAndRaiseStream on: (String new: 1000) searchingFor: stopBeforeGeneratingThisContent."

	context := self repo selectedActivation contextPart.
	aClass := context receiver class.
	1 halt.
	methodNode := context method methodNode.

	method := self methodNode generateWithTempNames.
