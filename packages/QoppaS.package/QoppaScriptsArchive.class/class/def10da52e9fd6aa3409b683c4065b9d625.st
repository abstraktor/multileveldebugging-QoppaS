definitions
def10da52e9fd6aa3409b683c4065b9d625
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , group first asString , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'10da52e9-fd6a-a340-9b68-3c4065b9d625'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , group first asString , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)