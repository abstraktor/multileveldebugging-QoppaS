private
annotate: levelName at: propName with: propValue
	(levelProps at: levelName ifAbsentPut: [Dictionary new])
		at: propName put: propValue
	