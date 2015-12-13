definitions
def8cc6692c8e078b42b0eb9b36fe5718ee
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out |
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :context :stackIndex | 
	debugger contextStackIndex = stackIndex ifFalse: [debugger toggleContextStackIndex: stackIndex]] valueWithArguments: tuple]]
			value: in.
	out addAll: in]); add: (#id->#'8cc6692c-8e07-8b42-b0eb-9b36fe5718ee'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 December 2015 2:27:03 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out |
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :context :stackIndex | 
	debugger contextStackIndex = stackIndex ifFalse: [debugger toggleContextStackIndex: stackIndex]] valueWithArguments: tuple]]
			value: in.
	out addAll: in]'); yourself)