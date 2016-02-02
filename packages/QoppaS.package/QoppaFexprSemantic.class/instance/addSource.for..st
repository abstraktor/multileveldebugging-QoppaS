source
addSource: aText for: aQoppaForm
	sourceIntervalsForForms at: aQoppaForm put: (Interval from: 1 to: aText size).
	^ sourceOfForms at: aQoppaForm put: aText