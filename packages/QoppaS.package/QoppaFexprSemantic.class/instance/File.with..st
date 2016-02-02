actions
File: aNode with: containedNodes
	^containedNodes children collect: [:each | | form |
		currentTopLevelForm := Object new. "temporary dummy"
		currentTopLevelFormOhmNode := each.
		self addSource: each interval contents asString asText for: currentTopLevelForm.
		form := self value: each.
		currentTopLevelForm becomeForward: form. "update source dictionaries for form"
		currentTopLevelForm := nil.
		currentTopLevelFormOhmNode := nil.
		form]