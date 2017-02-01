as yet unclassified
initialize
	self listSemantic: (self grammar: QoppaListSemantic new).
	self globalFrame: (Dictionary newFrom: {
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
		#'symbol?' -> (self countArgs: [:arg| (arg isString) or: (arg isQoppaWSymbol)]).
		#'pair?' -> (self countArgs: [:arg| (arg isKindOf: Collection) and: (arg isEmpty not)]).

		#eval -> (self countArgs: [:env :exp| "todo env" exp]).
		#lookup -> (self countArgs: [:name :env| name]).
		#operate -> (self countArgs: [:env :operative :operands| "todo env" self applyPrim: operative on: operands]).
	})