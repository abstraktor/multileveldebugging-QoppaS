source
rememberInterval: anInterval inSourceOf: aFormWithSource for: aQoppaForm
	| sourceOfParentForm |
	sourceOfParentForm := sourceOfForms at: aFormWithSource.
	sourceOfForms at: aQoppaForm put: sourceOfParentForm.
	^ sourceIntervalsForForms at: aQoppaForm put: anInterval