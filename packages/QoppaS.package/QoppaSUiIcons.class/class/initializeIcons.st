class initialization
initializeIcons

	| methods |
	Icons := IdentityDictionary new.
	methods := self class selectors
				select: [:each | '*Icon' match: each asString].
	methods
		do: [:each | Icons
				at: each
				put: (self perform: each)].