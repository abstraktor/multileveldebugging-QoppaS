actions
List: aNode of: alt
	| form |
	form := self value: alt.
	self rememberSourceOf: form madeFrom: aNode.
	^ form