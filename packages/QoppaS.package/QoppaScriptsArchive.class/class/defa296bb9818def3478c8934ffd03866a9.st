definitions
defa296bb9818def3478c8934ffd03866a9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a296bb98-18de-f347-8c89-34ffd03866a9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 6:56:46 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]')})