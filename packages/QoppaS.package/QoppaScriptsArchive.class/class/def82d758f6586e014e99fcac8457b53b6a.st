definitions
def82d758f6586e014e99fcac8457b53b6a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'82d758f6-586e-014e-99fc-ac8457b53b6a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')})