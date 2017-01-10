toolbuilder
resultsArray
	^results associations sorted: [:a :b| (verifiers indexOf: a value verifier) <= (verifiers indexOf: b value verifier)]