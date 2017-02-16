as yet unclassified
on: aCollection searchingFor: aNeedle
	^(self on: aCollection)
		raiseIf: [:index :value | 1 halt. aNeedle = value];
		yourself