as yet unclassified
initialize
	self primSelectorDict: (Dictionary newFrom: {
		#+ -> #+.
		#-  -> #-.
		#*  -> #*.
		#/   -> #/.
		#<=  -> #<=.
		#=  -> #eql:.
		
		#cons -> #cons:.
		#car -> #car:.
		#cdr -> #cdr:.
		#'set-car!' -> #'setCarExcl:'.
		#'set-cdr!' -> #'setCdrExcl:'.
		
		#'null?' -> #isNull:.
		#'symbol?' -> #isSymbol:.
		#'pair?' -> #isPair:.
		
		#vau -> #vau:forInput:startedAt:.
	})