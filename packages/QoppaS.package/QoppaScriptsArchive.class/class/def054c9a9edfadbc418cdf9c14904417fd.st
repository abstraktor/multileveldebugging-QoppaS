definitions
def054c9a9edfadbc418cdf9c14904417fd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:packageInfo | QoppaMLDGroupRepresentation for: packageInfo ]]
		value: in) do: [:result | out add: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'054c9a9e-dfad-bc41-8cdf-9c14904417fd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '18 January 2016 5:43:02 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:packageInfo | QoppaMLDGroupRepresentation for: packageInfo ]]
		value: in) do: [:result | out add: result asList]]')})