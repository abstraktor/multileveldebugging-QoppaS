definitions
def548873bf8522fa40bac885df5ad5fd36
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:association | { #text -> association key }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'548873bf-8522-fa40-bac8-85df5ad5fd36').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '28 January 2016 4:39:29 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:association | { #text -> association key }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})