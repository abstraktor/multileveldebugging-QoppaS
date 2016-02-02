definitions
defa2907723a5f6d24d9ea5e17295cac9aa
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:bindingList | { #text -> bindingList car qoppaPrintString }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a2907723-a5f6-d24d-9ea5-e17295cac9aa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 1:34:58 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:bindingList | { #text -> bindingList car qoppaPrintString }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})