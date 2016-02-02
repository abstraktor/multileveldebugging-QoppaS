definitions
def1ad0ac48f7cd2742a19e330852ca667a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:flatEnv | flatEnv asArray]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'1ad0ac48-f7cd-2742-a19e-330852ca667a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 1:32:14 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:flatEnv | flatEnv asArray]]
		value: in) do: [:result | out addAll: result asList]]')})