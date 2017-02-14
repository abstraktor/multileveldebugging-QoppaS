as yet unclassified
contentLines
	| lines |
	lines := (((self detailsOf: self repo selectedActivation)
			copyReplaceAll: '	' with: '    ')
		splitBy: String cr)
		allButLast
		allButFirst.
	
	"make headings bold"
	lines := lines collect: [:line|
		(self lineIsHeading: line)
			ifTrue: [line asText addAttribute: TextEmphasis bold]
			ifFalse: [line asText]
		].
	^lines