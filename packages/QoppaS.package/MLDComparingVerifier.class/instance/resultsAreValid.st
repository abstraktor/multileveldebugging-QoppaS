as yet unclassified
resultsAreValid
	| first |
	results ifEmpty: [^true].
	first := results values first.
	^results values allSatisfy: [:result | result sameResultAs: first ].