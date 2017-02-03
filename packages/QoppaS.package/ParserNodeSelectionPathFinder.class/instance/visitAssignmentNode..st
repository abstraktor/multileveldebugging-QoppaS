as yet unclassified
visitAssignmentNode: anAssignmentNode
	self checkPc: anAssignmentNode.
	"N.B.  since assigment happens after the value is evaluated the value is visited first."
	anAssignmentNode value comment: (anAssignmentNode comment copyWith: 1).
	anAssignmentNode value accept: self.
	anAssignmentNode variable comment: (anAssignmentNode comment copyWith: 2).
	anAssignmentNode variable accept: self