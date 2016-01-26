definitions
def2597d8f632f87d4b977292ec7eb54c35
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:contextNodes | QoppaEvalGrouper new groupNodes: contextNodes]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'2597d8f6-32f8-7d4b-9772-92ec7eb54c35'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'21 January 2016 10:27:45 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:contextNodes | QoppaEvalGrouper new groupNodes: contextNodes]
		value: in) do: [:result | out addAll: result asList]]'); yourself)