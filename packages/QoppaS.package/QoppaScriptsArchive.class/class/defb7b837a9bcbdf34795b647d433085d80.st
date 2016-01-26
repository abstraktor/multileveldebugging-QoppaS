definitions
defb7b837a9bcbdf34795b647d433085d80
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b7b837a9-bcbd-f347-95b6-47d433085d80').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})