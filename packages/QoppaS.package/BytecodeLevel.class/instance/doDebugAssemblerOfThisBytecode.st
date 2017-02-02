toolbuilder
doDebugAssemblerOfThisBytecode
	"debugs the code that translates the smalltalk human-friendly code into smalltalk bytecode"
	| pc aClass context method methodNode |
	pc := (self contentLines at: lastClickedContentLineIndex) asNumber.
	
	"aStream := WaitAndRaiseStream on: (String new: 1000) searchingFor: stopBeforeGeneratingThisContent."

	context := self repo selectedActivation contextPart.
	aClass := context receiver class.
	1 halt.
	methodNode := context method methodNode.

	method := self methodNode generateWithTempNames.
