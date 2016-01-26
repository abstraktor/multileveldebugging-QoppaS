definitions
def0c1c1a545f8f55429bd41899eb1f48e6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'0c1c1a54-5f8f-5542-9bd4-1899eb1f48e6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]')})