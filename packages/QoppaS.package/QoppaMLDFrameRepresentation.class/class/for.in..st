as yet unclassified
for: aMethodContext in: group
	^(self groupReprDict
		at: group name asSymbol
		ifAbsent: [[:c| {
				"((c selector findTokens: ':') collectWithIndex: [:token :i| token, ': ', (c at: i)]) joinSeparatedBy: ' '"
			#text -> (c selector).
			#icon -> ViIcons blankIcon.
			#object -> c }]]) value: aMethodContext