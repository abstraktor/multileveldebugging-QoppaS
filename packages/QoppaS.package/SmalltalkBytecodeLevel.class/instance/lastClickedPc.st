toolbuilder
lastClickedPc
	"the beginning is a number and then a space. extracting that number needs just calling asNumber"
	| lineIndex |
	
	"if clicking on the selected item, toolbuilder won't notify us again"
	lineIndex := lastClickedContentLineIndex ifNil: [self selectedContentLineIndex].
	
	^(self contentLines at: lineIndex) asNumber