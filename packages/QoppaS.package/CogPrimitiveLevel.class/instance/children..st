as yet unclassified
children: activation
	| children |
	activation basicHasChildren ifTrue: [^activation basicChildren ].
	
	children := super children: activation.

	(self includes: activation) ifFalse: [^children].
	
	children add: (self cNodeForActivation: activation).
	
	^children