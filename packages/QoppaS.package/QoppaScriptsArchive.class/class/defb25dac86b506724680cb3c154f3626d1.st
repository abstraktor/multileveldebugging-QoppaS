definitions
defb25dac86b506724680cb3c154f3626d1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects select: [:step | step label notNil]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b25dac86-b506-7246-80cb-3c154f3626d1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 6:43:26 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects select: [:step | step label notNil]]
		value: in) do: [:result | out addAll: result asList]]')})