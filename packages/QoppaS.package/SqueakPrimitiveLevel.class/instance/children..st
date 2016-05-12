as yet unclassified
children: activation
	| children |
	children := OrderedCollection new.
	children add: (VirtualContextNode new
		root: activation;
		definitionContent: 'hallo', Character lf, '	2+3';
		yourself).
	
	^children