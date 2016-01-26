definitions
def09e1c9601bbb7041acbbedc31abeebd7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | 
	| v |
	v := thisPane ownerThatIsA: ViSinglePaneEditor.
	v := v pane.
{
	#text -> 'proceed'.
	#clicked -> [[v close. debugger proceed]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'09e1c960-1bbb-7041-acbb-edc31abeebd7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 1:47:25 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | 
	| v |
	v := thisPane ownerThatIsA: ViSinglePaneEditor.
	v := v pane.
{
	#text -> ''proceed''.
	#clicked -> [[v close. debugger proceed]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]')})