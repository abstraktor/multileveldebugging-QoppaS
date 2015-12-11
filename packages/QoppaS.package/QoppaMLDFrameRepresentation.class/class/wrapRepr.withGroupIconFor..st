as yet unclassified
wrapRepr: aBlock withGroupIconFor: groupName
	^[:c|
		{
			#text -> (aBlock value: c).
			#icon -> (QoppaMLDGroupRepresentation iconFor: groupName).
			#object -> c
		}]