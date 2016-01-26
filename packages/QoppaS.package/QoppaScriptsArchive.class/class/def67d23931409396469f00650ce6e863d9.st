definitions
def67d23931409396469f00650ce6e863d9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'67d23931-4093-9646-9f00-650ce6e863d9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]')})