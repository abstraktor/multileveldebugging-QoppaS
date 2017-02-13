includes
isPrimitiveOperative: aQoppaOperative inEnv: env

	| primitiveMethodSelectors |
	primitiveMethodSelectors := #(
		apply
		append
		foldr
		assq
		cond
		and
		or
		and-or
		not
		to-bool
		let
		map
		caddr
		cadr
		caar
		compose
		set!
		begin
		last
		lambda
		wrap
		list
		quote
		if
		define
		vau
		+
		-
		*
		/
		<=
		<
		=
		cons
		car
		cdr
		set-car!
		set-cdr!
		bool
		null?
		symbol?
		pair?
		eval
		lookup
		operate
		halt
		load
	).

	"either a qoppa primitive"
	^aQoppaOperative isPrimitive
	"or a scheme primitive"
		or: [primitiveMethodSelectors includes: (env findNameOf: aQoppaOperative) asSymbol]