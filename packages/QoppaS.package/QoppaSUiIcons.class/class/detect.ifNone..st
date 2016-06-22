as yet unclassified
detect: aForm ifNone: aBlock
	"Looks for a method reference that returns the given form."
	
	self subclassesDo: [:cls |
		(cls theMetaClass organization listAtCategoryNamed: 'accessing') do: [:selector | (cls perform: selector) == aForm ifTrue: [^ MethodReference class: cls theMetaClass selector: selector]]].
	
	^ aBlock value
	