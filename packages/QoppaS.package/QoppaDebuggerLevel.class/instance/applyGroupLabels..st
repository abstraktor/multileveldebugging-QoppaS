as yet unclassified
applyGroupLabels: aCollectionOfActivations
	(aCollectionOfActivations
		select: [:activation| activation isActualContextNode])
		do: [:activation|
		activation contextPart method == (QoppaInterpreter >> #operate:on:in:)
			ifTrue: [activation at: #labelGrouper put: #start].
		activation contextPart method protocol = #'qoppa-errors'
			ifTrue: [activation at: #labelGrouper put: #error].
		activation contextPart method == (QoppaInterpreter >> #eval:in:)
			ifTrue: [activation at: #labelGrouper put: #end]].