grouping
collectNode: aContextNode
	collectedNodesLastCons cdr: (QoppaWCons withCar: aContextNode).
	collectedNodesLastCons := collectedNodesLastCons cdr.