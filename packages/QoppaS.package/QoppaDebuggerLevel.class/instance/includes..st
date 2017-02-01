as yet unclassified
includes: anActivation
	^(anActivation at: #isQoppaContext ifAbsent: [false])
		and: [(anActivation at: #operative) isPrimitive not]