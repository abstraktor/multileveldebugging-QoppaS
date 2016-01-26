definitions
defe979fa891ee1054e8b026b52d54e6f81
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:packageInfo :methodContext :contextIndex | QoppaMLDFrameRepresentation for: methodContext at: contextIndex ] valueWithArguments: tuple]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'e979fa89-1ee1-054e-8b02-6b52d54e6f81').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '9 December 2015 12:36:33 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:packageInfo :methodContext :contextIndex | QoppaMLDFrameRepresentation for: methodContext at: contextIndex ] valueWithArguments: tuple]]
		value: in) do: [:result | out addAll: result asList]]')})