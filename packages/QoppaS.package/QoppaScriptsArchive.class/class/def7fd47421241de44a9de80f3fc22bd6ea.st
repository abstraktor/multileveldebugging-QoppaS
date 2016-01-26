definitions
def7fd47421241de44a9de80f3fc22bd6ea
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes
		sorted: [:c1 :c2 | c1 name <= c2 name]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'7fd47421-241d-e44a-9de8-0f3fc22bd6ea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes
		sorted: [:c1 :c2 | c1 name <= c2 name]] value: in)]')})