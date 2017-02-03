toolbuilder
doDebugAssemblerOfThisBytecode
	"debugs the code that translates the smalltalk human-friendly code into smalltalk bytecode"
	| aClass context methodNode found |

	"install hook to replace the next created WriteStream with our waiting and raising stream"
	WriteStream setStubMethodForNextCreation: [:aCollection|
		WaitAndRaiseStream with: aCollection raiseWhenWriting: self lastClickedPc].

	context := self repo selectedActivation contextPart.
	aClass := context receiver class.
	methodNode := context methodNode.

	found := false.
	[methodNode generateWithTempNames]
	on: WaitAndRaiseStreamFoundIt do: [:e|
		found := true.
		TBMLD step: e needleWritingContext].
	
	found ifFalse: [
		self notify: 'Sorry, I can''find it:', String cr, String cr,
			'I was waiting for pc ', self lastClickedPc, String cr,
			'But it was never written'].
