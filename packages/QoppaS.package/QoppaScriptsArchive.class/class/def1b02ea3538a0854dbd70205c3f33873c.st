definitions
def1b02ea3538a0854dbd70205c3f33873c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'1b02ea35-38a0-854d-bd70-205c3f33873c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 January 2016 4:51:30 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]')})