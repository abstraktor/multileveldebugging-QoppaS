as yet unclassified
groupReprDict
	^Dictionary newFrom: {
		#'QoppaS' -> (self wrapRepr: [:c| c selector.] withGroupIconFor: #QoppaS).
		#'Ohm-Core' ->  (self wrapRepr: [:c| (DebuggerLevel named: 'Ohm-Core') frameTitleOf: c] withGroupIconFor: #'Ohm-Core').
		#'Kernel'   -> (self wrapRepr: [:c| c selector] withGroupIconFor: #Kernel).
		#'Collections'   -> (self wrapRepr: [:c| c selector] withGroupIconFor: #Collections).
	}