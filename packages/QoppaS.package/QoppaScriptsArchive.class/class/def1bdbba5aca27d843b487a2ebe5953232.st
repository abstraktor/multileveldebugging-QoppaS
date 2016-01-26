definitions
def1bdbba5aca27d843b487a2ebe5953232
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'1bdbba5a-ca27-d843-b487-a2ebe5953232').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result | out addAll: result asList]]')})