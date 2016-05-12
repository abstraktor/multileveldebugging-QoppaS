data extraction
finishLastQoppaNodeBefore: contextCons
	| operative interpreter operands operativeName |
	lastQoppaNode ifNil: [^ self].
	interpreter := (lastQoppaNode at: #operateSmalltalkContext) receiver.
	operative := (lastQoppaNode at: #operateSmalltalkContext) arguments first.
	operands := (lastQoppaNode at: #operateSmalltalkContext) arguments second.
	operativeName := interpreter globalEnv car detect: [:eachAssoc | eachAssoc cadr == operative]
		ifFound: [:assoc | assoc car qoppaPrintString]
		ifNone: ['[unbound-operative]'].
	lastQoppaNode summary: 'Qoppa: (apply ', operativeName, ' ''', operands qoppaPrintString, ')'.
	lastQoppaNode := nil