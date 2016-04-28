definitions
def05cdc25d97ae4cd0bc2b85336ac89f06
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:object :object2 | {object second. object2}] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'05cdc25d-97ae-4cd0-bc2b-85336ac89f06').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'bak').
(#creationTimeStamp -> '27 April 2016 1:29:36 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:object :object2 | {object second. object2}] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})