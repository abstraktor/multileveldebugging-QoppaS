definitions
def5abdd2fd0cbfdf4ba3d631f5f58425de
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:methodContext | methodContext ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'5abdd2fd-0cbf-df4b-a3d6-31f5f58425de'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'9 December 2015 12:44:15 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:methodContext | methodContext ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)