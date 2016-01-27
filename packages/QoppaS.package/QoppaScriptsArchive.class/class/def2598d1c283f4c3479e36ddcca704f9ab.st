definitions
def2598d1c283f4c3479e36ddcca704f9ab
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:tuple | (
	[:fieldNameString :index  | { #text -> fieldNameString }]
		valueWithArguments: tuple), { #object -> tuple }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'2598d1c2-83f4-c347-9e36-ddcca704f9ab').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 2:53:06 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:tuple | (
	[:fieldNameString :index  | { #text -> fieldNameString }]
		valueWithArguments: tuple), { #object -> tuple }]]
			value: in) do: [:result | out add: result]]')})