as yet unclassified
fillDataHolders: aQoppaContextNode
	| operateContextPart arguments |
	operateContextPart := aQoppaContextNode at: #operateSmalltalkContext.
	arguments := operateContextPart arguments second.
	aQoppaContextNode dataHolders: (arguments collectWithIndex: [:each :index | index -> each])