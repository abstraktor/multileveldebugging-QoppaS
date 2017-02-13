toolbuilder
lastClickedPc
	"the beginning is a number and then a space. extracting that number needs just calling asNumber"
	^(self contentLines at: lastClickedContentLineIndex) asNumber