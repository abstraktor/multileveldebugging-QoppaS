as yet unclassified
resultsAreValid
	| first |
	results ifEmpty: [^true].
	first := results values detect: [:result| result isEmpty not].
	^results values allSatisfy: [:result |
		result isEmpty or: [result sameResultAs: first]].