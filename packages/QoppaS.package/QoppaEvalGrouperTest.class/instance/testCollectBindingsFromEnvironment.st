as yet unclassified
testCollectBindingsFromEnvironment
	| grouper env expectedAssociations actualAssociations |
	grouper := QoppaEvalGrouper new.
	env := QoppaWCons newListFrom: {
		QoppaWCons newListFrom: { "frame 2"
			QoppaWCons newListFrom: {#z. 4}}.
		QoppaWCons newListFrom: { "frame 1"
			QoppaWCons newListFrom: {#x. 1}. 
			QoppaWCons newListFrom: {#y. 2}.
			QoppaWCons newListFrom: {#z. 3}}.
		QoppaWCons newListFrom: { "global"
			QoppaWCons newListFrom: {#globalstuff. 5}}}.
	expectedAssociations := {#z -> 4. #x -> 1. #y -> 2. #globalstuff -> 5}.
	actualAssociations := grouper collectBindingsFromEnvironment: env.
	self assert: expectedAssociations equals: actualAssociations