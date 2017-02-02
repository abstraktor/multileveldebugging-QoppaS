toolbuilder
doDebugDisassemblerOfThisLine
	"debugs the code that translates the smalltalk bytecode into linewise readable representation"
	| stopBeforeGeneratingThisContent aStream found |
	stopBeforeGeneratingThisContent := (self contentLines at: lastClickedContentLineIndex) asString.
	
	aStream := WaitAndRaiseStream on: (String new: 1000) searchingFor: stopBeforeGeneratingThisContent.

	found := false.
	[self repo selectedActivation contextPart method
		longPrintOn: aStream]
	on: WaitAndRaiseStreamFoundIt do: [:e|
		found := true.
		TBMLD step: e needleWritingContext].

	found ifFalse: [
		self notify: 'Sorry, I can''find it:', String cr, String cr,
			'Searching: ', stopBeforeGeneratingThisContent, String cr,
			'In: ', aStream contents].