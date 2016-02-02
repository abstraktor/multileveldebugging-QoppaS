definitions
defa293b4970f70984ebce42fa284ae8247
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:operative :reader | reader sourceFor: operative] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a293b497-0f70-984e-bce4-2fa284ae8247').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 2:17:40 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:operative :reader | reader sourceFor: operative] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})