*QoppaS-Verifier
on: anObject

	| localNextCreationStub |
	
	(nextCreationStubCondition isNil or: [nextCreationStubCondition value: anObject]) ifTrue: [
		localNextCreationStub := nextCreationStub.
		nextCreationStub := nil.
		nextCreationStubCondition := nil.
		localNextCreationStub ifNotNil: [^localNextCreationStub value: anObject].
	].
	
	^self new setObject: anObject