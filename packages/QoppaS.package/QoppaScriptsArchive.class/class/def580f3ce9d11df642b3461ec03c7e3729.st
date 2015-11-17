definitions
def580f3ce9d11df642b3461ec03c7e3729
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'580f3ce9-d11d-f642-b346-1ec03c7e3729'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:pane | {#text -> pane printString. #selectedLater
		-> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:pane | {#text -> pane printString. #selectedLater
		-> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)