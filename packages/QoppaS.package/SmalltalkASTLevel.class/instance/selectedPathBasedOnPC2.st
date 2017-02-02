toolbuilder
selectedPathBasedOnPC2
	| entering i path pc |
	i := 0.
	pc := 164.
	entering := false.
	path := OrderedCollection new.
	self methodNode
		accept: (ParseNodeEnumerator
				ofBlock: [:node | 
					Transcript showln: node pc.
					entering
						ifTrue: [path add: i.
							entering := false].
					node pc = pc ifTrue: [1 halt]]
				select: [:node |
					Transcript showln: 'select: ', node pc.
					(node pc <= pc)
						ifTrue: [i := i + 1.
							entering := true.
							true]
						ifFalse: [path isEmpty ifFalse: [path removeLast]. false]])