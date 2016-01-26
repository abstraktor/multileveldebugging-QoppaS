definitions
def5bcd69a5c02873408a2f93c4050fb742
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: (in collect: [:context | ContextNodePrototype for: context])]).
(#class -> ViQueryStepDefinition).
(#id -> #'5bcd69a5-c028-7340-8a2f-93c4050fb742').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 January 2016 4:40:11 pm')})).
(#sourceCode -> '[:in :out | out addAll: (in collect: [:context | ContextNodePrototype for: context])]')})