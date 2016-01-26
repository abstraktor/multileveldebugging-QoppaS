as yet unclassified
for: aMethodContext in: group at: flatStackIndex
	^self new
		contextPart: aMethodContext;
		group: group;
		stackIndex: flatStackIndex;
		yourself
		"#text -> (self frameTitleOf: group for: aMethodContext).
		#icon -> (QoppaMLDGroupRepresentation iconFor: group).
		#object -> {aMethodContext. flatStackIndex }"