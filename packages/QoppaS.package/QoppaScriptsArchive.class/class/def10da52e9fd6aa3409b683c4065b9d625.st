definitions
def10da52e9fd6aa3409b683c4065b9d625
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , group first asString , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'10da52e9-fd6a-a340-9b68-3c4065b9d625').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , group first asString , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]')})