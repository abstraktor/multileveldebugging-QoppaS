private
annotationOf: levelName at: propName ifAbsent: absentBlock
	^(levelProps at: levelName ifAbsentPut: [Dictionary new])
		at: propName ifAbsent: absentBlock