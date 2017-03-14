actions
doDebugAssemblerOfThisParseNode

	"install hook to replace the next created WriteStream with our waiting and raising stream"
	| found |
	WriteStream setStubMethodForNextCreation: [:aCollection|
		WaitAndRaiseStream with: aCollection raiseWhenWriting: self lastClickedPc].
	
	[self generateMethodNode]
	on: WaitAndRaiseFoundIt do: [:e|
		found := true.
		TBMLD step: e needleWritingContext].
	
	found ifFalse: [
		self notify: 'Sorry, I can''find it:', String cr, String cr,
			'I was waiting for pc ', self lastClickedPc, String cr,
			'But it was never written'].
