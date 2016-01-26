definitions
def9ec428213c758146a08d14787c89fabe
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:context | PackageOrganizer default packageOfMethod: context method methodReference]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'9ec42821-3c75-8146-a08d-14787c89fabe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '8 December 2015 11:52:33 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:context | PackageOrganizer default packageOfMethod: context method methodReference]]
		value: in) do: [:result | out addAll: result asList]]')})