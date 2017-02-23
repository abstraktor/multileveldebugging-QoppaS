annotations
disabledAnnotationOf: levelName
	^self annotationOf: levelName at: #disabled ifAbsent: [false]