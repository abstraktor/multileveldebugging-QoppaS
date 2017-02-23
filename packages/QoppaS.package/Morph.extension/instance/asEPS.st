*QoppaS-Paperwork
asEPS
	| prev |
	prev := Morph useSoftDropShadow.
	Morph useSoftDropShadow: false.
	[^ EPSCanvas morphAsPostscript: self rotated: false]
		ensure: [Morph useSoftDropShadow: prev]
