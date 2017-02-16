toolbuilder
lastClickedPc
	| lines |
	self shouldBeImplemented.
	
	lines := self contentLines.
	
	"seek upwards from line at: lastClickedContentLineIndex"
	lastClickedContentLineIndex to: 0 by: -1 do: [:i| | line |
		line := (lines at: i) asString.
		"find heading this line belongs to"
		(self lineIsHeading: line) ifTrue: [
			"extract first pc in case of a loophole"
			((line allRegexMatches:  '[^[0-9]]+[0-9]*')
				collect: [:s| s asInteger])
				ifNotEmpty: [:pc| ^pc first]]].

	^0