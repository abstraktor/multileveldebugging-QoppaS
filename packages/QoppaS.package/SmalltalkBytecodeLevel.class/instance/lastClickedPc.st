toolbuilder
lastClickedPc
	| lineIndex |
	"if clicking on the selected item, toolbuilder won't notify us again"
	lineIndex := (lastClickedContentLineIndex = 0) 
		ifTrue: [self selectedContentLineIndex]
		ifFalse: [lastClickedContentLineIndex].
	
	"the beginning is a number and then a space. extracting that number works by just calling asNumber"
	^(self contentLines at: lineIndex) asNumber