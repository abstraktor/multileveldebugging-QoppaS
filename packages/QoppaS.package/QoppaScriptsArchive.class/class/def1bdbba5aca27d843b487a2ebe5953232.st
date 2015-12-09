definitions
def1bdbba5aca27d843b487a2ebe5953232
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'1bdbba5a-ca27-d843-b487-a2ebe5953232'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)