actions
doDebugDisassemblerOfThisLine
	"debugs the code that translates the smalltalk bytecode into linewise readable representation"
	| found needle waitAndRaiseStream |

	needle := self contentLines at: lastClickedContentLineIndex.
	waitAndRaiseStream := WaitAndRaiseStream
		on: (String new: 1000)
		searchingFor: needle.

	found := false.
	[self compileActivation: self repo selectedActivation toStream: waitAndRaiseStream]
	on: WaitAndRaiseFoundIt do: [:e|
		found := true.
		TBMLD step: e needleWritingContext].
	
	found ifFalse: [
		self notify: 'Sorry, I can''find it:', String cr, String cr,
			'I was waiting for ', needle, String cr,
			'But it was never written'].
