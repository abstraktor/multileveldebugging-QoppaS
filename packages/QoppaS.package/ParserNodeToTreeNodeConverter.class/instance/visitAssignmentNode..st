as yet unclassified
visitAssignmentNode: anAssignmentNode
	"N.B.  since assigment happens after the value is evaluated the value is visited first."
	
	^(self nodeFor: anAssignmentNode)
		addChildren: {anAssignmentNode value accept: self.
			anAssignmentNode variable accept: self}