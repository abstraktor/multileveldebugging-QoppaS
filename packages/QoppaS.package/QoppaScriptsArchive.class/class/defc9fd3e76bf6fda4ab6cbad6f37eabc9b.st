definitions
defc9fd3e76bf6fda4ab6cbad6f37eabc9b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:string | {{#text -> string. #editable -> false}}]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c9fd3e76-bf6f-da4a-b6cb-ad6f37eabc9b').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'dcd174f7-67e1-7e4b-aa9f-eb04df1bad00').
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '9 December 2015 5:59:32 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:string | {{#text -> string. #editable -> false}}]]
		value: in) do: [:result | out addAll: result asList]]')})