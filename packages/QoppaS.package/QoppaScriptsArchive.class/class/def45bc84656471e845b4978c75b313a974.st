definitions
def45bc84656471e845b4978c75b313a974
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node summary }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'45bc8465-6471-e845-b497-8c75b313a974').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 January 2016 4:50:56 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node summary }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})