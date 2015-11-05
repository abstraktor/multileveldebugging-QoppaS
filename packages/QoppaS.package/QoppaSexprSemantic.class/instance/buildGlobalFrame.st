as yet unclassified
buildGlobalFrame 
	^Dictionary newFrom: {
		#+ -> [:args| args reduce: [:a :b| a + b]].
		#-  -> [:args| args reduce: [:a :b| a - b]].
		#*  -> [:args| args reduce: [:a :b| a * b]].
		#/   -> [:args| args reduce: [:a :b| a / b]].
		#<=  -> (self countArgs: [:a :b| a <= b]).
		#=  -> [:args| args reduce: [:a :b| a = b]].
		
		#cons -> (self countArgs: [:car :cdr|
			|list|
			list := OrderedCollection withAll: cdr.
			list addFirst: car.
			list]).
		#car -> (self countArgs: [:list| list first]).
		#cdr -> (self countArgs: [:list| list allButFirst]).
		#'set-car!' -> (self countArgs: [:list :car| list allButFirst addFirst: car; yourself]).
		#'set-cdr!' -> (self countArgs: [:list :cdr|
			list removeLast: list size - 1;
				addAll: cdr;
				yourself]).
		
		#'null?' -> (self countArgs: [:arg| arg isEmpty]).
		#'symbol?' -> (self countArgs: [:arg| (arg isString) or: (arg isSymbol)]).
		#'pair?' -> (self countArgs: [:arg| (arg isKindOf: Collection) and: (arg isEmpty not)]).

		#eval -> (self countArgs: [:env :exp| self eval: exp in: env]).
		#lookup -> (self countArgs: [:name :env| env at: name]).
		#operate -> (self countArgs: [:env :operative :operands| self operate: operative on: operands in: env]).
	}.