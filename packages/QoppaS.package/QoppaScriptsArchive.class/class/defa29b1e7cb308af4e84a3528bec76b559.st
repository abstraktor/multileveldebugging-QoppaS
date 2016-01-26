definitions
defa29b1e7cb308af4e84a3528bec76b559
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script baseClassName }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a29b1e7c-b308-af4e-84a3-528bec76b559').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script baseClassName }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})