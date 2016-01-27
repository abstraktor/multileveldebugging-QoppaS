definitions
def8f79b9628032b34a9ea93401cb73f34e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> object printString } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'8f79b962-8032-b34a-9ea9-3401cb73f34e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 3:57:17 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> object printString } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})