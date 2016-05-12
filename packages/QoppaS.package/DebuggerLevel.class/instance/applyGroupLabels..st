as yet unclassified
applyGroupLabels: aCollectionOfActivations
	aCollectionOfActivations do: [:activation|
		activation at: #labelGrouper put: nil]