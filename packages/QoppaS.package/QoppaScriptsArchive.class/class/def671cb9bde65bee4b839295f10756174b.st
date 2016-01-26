definitions
def671cb9bde65bee4b839295f10756174b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'671cb9bd-e65b-ee4b-8392-95f10756174b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 January 2016 4:12:31 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})