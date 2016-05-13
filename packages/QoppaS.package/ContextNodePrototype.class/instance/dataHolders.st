inspection
dataHolders
	"Answer variables bound in the context part"
	| inspector |
	^ (inspector := (ContextVariablesInspector inspect: contextPart))
		fieldList withIndexCollect: [:each :index |
			each -> (inspector toggleIndex: index; selection) ]