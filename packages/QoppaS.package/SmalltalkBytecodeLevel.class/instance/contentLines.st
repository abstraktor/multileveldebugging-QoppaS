toolbuilder
contentLines
	^((self detailsOf: self repo selectedActivation)
		splitBy: String cr)
		allButLast