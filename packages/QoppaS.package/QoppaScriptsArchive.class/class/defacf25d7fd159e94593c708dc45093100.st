definitions
defacf25d7fd159e94593c708dc45093100
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#id->#'acf25d7f-d159-e945-93c7-08dc45093100'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)