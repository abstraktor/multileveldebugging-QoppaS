as yet unclassified
for: aMethodContext in: group
	^{
		"((c selector findTokens: ':') collectWithIndex: [:token :i| token, ': ', (c at: i)]) joinSeparatedBy: ' '"
		#text -> (self frameTitleOf: group for: aMethodContext).
		#icon -> (QoppaMLDGroupRepresentation iconFor: group).
		#object -> aMethodContext }