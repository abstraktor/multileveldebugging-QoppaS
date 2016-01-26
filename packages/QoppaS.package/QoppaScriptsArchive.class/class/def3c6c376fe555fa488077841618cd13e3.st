definitions
def3c6c376fe555fa488077841618cd13e3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: (in sorted: [:a :b | a nextLabel < b nextLabel])]).
(#class -> ViQueryStepDefinition).
(#id -> #'3c6c376f-e555-fa48-8077-841618cd13e3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '9 December 2015 12:56:05 am')})).
(#sourceCode -> '[:in :out | out addAll: (in sorted: [:a :b | a nextLabel < b nextLabel])]')})