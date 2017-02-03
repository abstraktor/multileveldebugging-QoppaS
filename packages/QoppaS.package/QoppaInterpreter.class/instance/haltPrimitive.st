primitives
haltPrimitive
	self flag: #operativeArguments.
	^ QoppaOperative new
		isPrimitive: true;
		block: [:env :args | args halt];
		yourself