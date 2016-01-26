definitions
defd91841dd507dba44a6770780cd0b79d8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:contextNode | {
	#text -> contextNode summary.
	#icon -> contextNode icon.
	#objects -> contextNode.
	#object -> {contextNode nearestSmalltalkContext contextPart. contextNode nearestSmalltalkContext stackIndex}}]
		value: o)]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'d91841dd-507d-ba44-a677-0780cd0b79d8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '21 January 2016 7:59:27 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:contextNode | {
	#text -> contextNode summary.
	#icon -> contextNode icon.
	#objects -> contextNode.
	#object -> {contextNode nearestSmalltalkContext contextPart. contextNode nearestSmalltalkContext stackIndex}}]
		value: o)]]
			value: in) do: [:result | out add: result]]')})