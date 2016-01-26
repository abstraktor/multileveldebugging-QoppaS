definitions
def3718ce3b073f3e469262caf2730a20e8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodContext | ContextNodePrototype for: methodContext]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'3718ce3b-073f-3e46-9262-caf2730a20e8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 January 2016 5:04:27 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodContext | ContextNodePrototype for: methodContext]]
		value: in) do: [:result | out addAll: result asList]]')})