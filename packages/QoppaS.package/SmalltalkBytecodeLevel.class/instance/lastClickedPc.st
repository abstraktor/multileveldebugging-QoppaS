toolbuilder
lastClickedPc
	"the beginning is a number and then a space. extracting that number needs just calling asNumber"
	| lineIndex |
	
	"if clicking on the selected item, toolbuilder won't notify us again"
	lineIndex := (lastClickedContentLineIndex = 0) 
		ifTrue: [self selectedContentLineIndex]
		ifFalse: [lastClickedContentLineIndex].
	
	^(self contentLines at: lineIndex) asNumber