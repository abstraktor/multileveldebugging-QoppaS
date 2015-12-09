definitions
def218d272a728b364891a1258f4486c099
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:scriptOrView | {#text -> scriptOrView printString. #selectedLater
		-> [[scriptOrView isMorph
				ifTrue: [scriptOrView addHalo]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'218d272a-728b-3648-91a1-258f4486c099'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:scriptOrView | {#text -> scriptOrView printString. #selectedLater
		-> [[scriptOrView isMorph
				ifTrue: [scriptOrView addHalo]]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)