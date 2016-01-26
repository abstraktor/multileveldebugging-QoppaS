definitions
def33753ff8c63556468da5bfaa2d4dd0c8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text
		-> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'33753ff8-c635-5646-8da5-bfaa2d4dd0c8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text
		-> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})