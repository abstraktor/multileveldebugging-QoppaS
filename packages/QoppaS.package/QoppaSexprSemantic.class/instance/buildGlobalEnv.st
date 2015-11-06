as yet unclassified
buildGlobalEnv
	^Cons withCar: (Cons newDictFrom: {
		#+ -> [:args| args reduce: [:a :b| a + b]].
		#-  -> [:args| args reduce: [:a :b| a - b]].
		#*  -> [:args| args reduce: [:a :b| a * b]].
		#/   -> [:args| args reduce: [:a :b| a / b]].
		#<=  -> (self countArgs: [:a :b| a <= b]).
		#=  -> [:args| args reduce: [:a :b| a = b]].
		
		#cons -> (self countArgs: [:car :cdr| Cons withCar: car cdr: cdr]).
		#car -> (self countArgs: [:cons| cons car]).
		#cdr -> (self countArgs: [:cons| cons cdr]).
		#'set-car!' -> (self countArgs: [:cons :car| cons car: car; yourself]).
		#'set-cdr!' -> (self countArgs: [:cons :cdr| cons cdr: cdr; yourself]).
		
		#'null?' -> (self countArgs: [:arg| arg isEmpty]).
		#'symbol?' -> (self countArgs: [:arg| (arg isString) or: (arg isSymbol)]).
		#'pair?' -> (self countArgs: [:arg| arg isCons and: arg isEmpty not]).

		#eval -> (self countArgs: [:env :exp| self eval: exp in: env]).
		#lookup -> (self countArgs: [:name :env| self lookup: name in: env]).
		#operate -> (self countArgs: [:env :operative :operands| self operate: operative on: operands in: env]).
	}).