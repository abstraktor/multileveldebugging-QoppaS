definitions
defa7362dd85a0a2e449be9b4ac228ce844
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a7362dd8-5a0a-2e44-9be9-b4ac228ce844').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 5:07:55 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})