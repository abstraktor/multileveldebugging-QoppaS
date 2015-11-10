as yet unclassified
buildGlobalEnv
	^QoppaWCons withCar: (QoppaWCons newDictFrom: {
		#+ -> (self wrapPrim: [:args| args reduce: [:a :b| a + b]] countingArgs: false).
		#-  -> (self wrapPrim: [:args| args reduce: [:a :b| a - b]] countingArgs: false).
		#*  -> (self wrapPrim: [:args| args reduce: [:a :b| a * b]] countingArgs: false).
		#/   -> (self wrapPrim: [:args| args reduce: [:a :b| a / b]] countingArgs: false).
		#<=  -> (self wrapPrim: [:args| args reduce: [:a :b| a <= b]] countingArgs: false).
		#=  -> (self wrapPrim: [:args| args reduce: [:a :b| a = b]] countingArgs: false).
		
		#cons -> (self wrapPrim: [:car :cdr| 1halt.QoppaWCons withCar: car cdr: cdr] countingArgs: true).
		#car -> (self wrapPrim: [:cons| cons car] countingArgs: true).
		#cdr -> (self wrapPrim: [:cons| cons cdr] countingArgs: true).
		#'set-car!' -> (self wrapPrim: [:cons :car| 1 halt.cons car: car; yourself] countingArgs: true).
		#'set-cdr!' -> (self wrapPrim: [:cons :cdr| cons cdr: cdr; yourself] countingArgs: true).
		
		#'null?' -> (self wrapPrim: [:arg| arg isEmpty] countingArgs: true).
		#'symbol?' -> (self wrapPrim: [:arg| (arg isString) or: (arg isSymbol)] countingArgs: true).
		#'pair?' -> (self wrapPrim: [:arg| arg isCons and: arg isEmpty not] countingArgs: true).

		#eval -> (self wrapPrim: [:env :exp| self eval: exp in: env] countingArgs: true).
		#lookup -> (self wrapPrim: [:name :env| self lookup: name in: env] countingArgs: true).
		#operate -> (self wrapPrim: [:env :operative :operands| self operate: operative on: operands in: env] countingArgs: true).
	}).