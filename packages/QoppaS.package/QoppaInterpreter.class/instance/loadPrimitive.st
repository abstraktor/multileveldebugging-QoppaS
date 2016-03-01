primitives
loadPrimitive
	self flag: #operativeArguments.
	^ QoppaOperative new
		isPrimitive: true;
		block: [:env :args | |name|
			name := self eval: args first in: env.
			self readAndEvaluate: (QoppaPrelude perform: name asSymbol)];
		yourself