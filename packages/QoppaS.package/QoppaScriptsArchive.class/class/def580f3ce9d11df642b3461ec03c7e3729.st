definitions
def580f3ce9d11df642b3461ec03c7e3729
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:pane | {#text -> pane printString. #selectedLater
		-> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'580f3ce9-d11d-f642-b346-1ec03c7e3729').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:pane | {#text -> pane printString. #selectedLater
		-> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})