definitions
def8cc6692c8e078b42b0eb9b36fe5718ee
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out |
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :context :stackIndex | 
	debugger contextStackIndex = stackIndex ifFalse: [debugger fullStack. debugger toggleContextStackIndex: stackIndex]] valueWithArguments: tuple]]
			value: in.
	out addAll: in]).
(#class -> ViQueryStepDefinition).
(#id -> #'8cc6692c-8e07-8b42-b0eb-9b36fe5718ee').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 2:27:03 am')})).
(#sourceCode -> '[:in :out |
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :context :stackIndex | 
	debugger contextStackIndex = stackIndex ifFalse: [debugger fullStack. debugger toggleContextStackIndex: stackIndex]] valueWithArguments: tuple]]
			value: in.
	out addAll: in]')})