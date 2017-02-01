as yet unclassified
operatorOf: anActivation
	^((anActivation at: #env) asQoppaWEnvironment findNameOf: (anActivation at: #operative)) asSymbol asString
