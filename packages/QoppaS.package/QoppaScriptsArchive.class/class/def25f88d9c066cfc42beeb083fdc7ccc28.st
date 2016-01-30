definitions
def25f88d9c066cfc42beeb083fdc7ccc28
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> object printString } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'25f88d9c-066c-fc42-beeb-083fdc7ccc28').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 4:53:27 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> object printString } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})