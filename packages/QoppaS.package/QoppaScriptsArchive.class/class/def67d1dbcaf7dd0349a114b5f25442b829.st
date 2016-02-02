definitions
def67d1dbcaf7dd0349a114b5f25442b829
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:text | { #text -> text }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'67d1dbca-f7dd-0349-a114-b5f25442b829').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 1:45:26 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:text | { #text -> text }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})