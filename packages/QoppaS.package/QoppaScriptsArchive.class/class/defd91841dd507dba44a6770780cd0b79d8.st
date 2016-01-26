definitions
defd91841dd507dba44a6770780cd0b79d8
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:contextNode | {
	#text -> contextNode summary.
	#icon -> contextNode icon.
	#objects -> contextNode.
	#object -> {contextNode nearestSmalltalkContext contextPart. contextNode nearestSmalltalkContext stackIndex}}]
		value: o)]]
			value: in) do: [:result | out add: result]]); add: (#id->#'d91841dd-507d-ba44-a677-0780cd0b79d8'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'21 January 2016 7:59:27 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:contextNode | {
	#text -> contextNode summary.
	#icon -> contextNode icon.
	#objects -> contextNode.
	#object -> {contextNode nearestSmalltalkContext contextPart. contextNode nearestSmalltalkContext stackIndex}}]
		value: o)]]
			value: in) do: [:result | out add: result]]'); yourself)