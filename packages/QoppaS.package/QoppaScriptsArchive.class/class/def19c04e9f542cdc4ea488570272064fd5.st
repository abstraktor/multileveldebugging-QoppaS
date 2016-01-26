definitions
def19c04e9f542cdc4ea488570272064fd5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | | helper | helper := ContextsHelperForVivideScripts new.
	objects collect: [:contextNodePrototype | { contextNodePrototype.
	helper methodTimestamp: contextNodePrototype contextPart }]]
		value: in) do: [:result | out add: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'19c04e9f-542c-dc4e-a488-570272064fd5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 January 2016 4:56:22 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | | helper | helper := ContextsHelperForVivideScripts new.
	objects collect: [:contextNodePrototype | { contextNodePrototype.
	helper methodTimestamp: contextNodePrototype contextPart }]]
		value: in) do: [:result | out add: result asList]]')})