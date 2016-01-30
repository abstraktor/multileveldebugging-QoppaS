definitions
def2597d8f632f87d4b977292ec7eb54c35
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:contextNodes | QoppaContextGrouper new groupNodes: contextNodes]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'2597d8f6-32f8-7d4b-9772-92ec7eb54c35').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '21 January 2016 10:27:45 pm')})).
(#sourceCode -> '[:in :out | (
	[:contextNodes | QoppaContextGrouper new groupNodes: contextNodes]
		value: in) do: [:result | out addAll: result asList]]')})