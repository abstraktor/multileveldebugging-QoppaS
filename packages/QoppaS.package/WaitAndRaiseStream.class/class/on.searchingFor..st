as yet unclassified
on: aCollection searchingFor: aNeedle
	^(self on: aCollection)
		raiseIf: [:stream :start :end| stream isEndingWithNeedle: aNeedle];
		yourself