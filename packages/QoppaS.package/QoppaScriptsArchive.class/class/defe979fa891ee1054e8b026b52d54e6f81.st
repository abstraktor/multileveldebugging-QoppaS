definitions
defe979fa891ee1054e8b026b52d54e6f81
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'9 December 2015 12:36:33 am'); yourself)); add: (#id->#'e979fa89-1ee1-054e-8b02-6b52d54e6f81'); add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:packageInfo :methodContext | methodContext] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:packageInfo :methodContext | methodContext] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)