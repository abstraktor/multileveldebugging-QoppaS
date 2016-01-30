primitives
haltPrimitive
	self flag: #operativeArguments.
	^ QoppaOperative new
		isPrimitive: true;
		block: [:arg | arg halt];
		yourself