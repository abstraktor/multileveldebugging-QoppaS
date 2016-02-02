source
sourceFor: aQoppaForm
	| interval |
	interval := sourceIntervalsForForms at: aQoppaForm ifAbsent: [^ nil].
	^ (sourceOfForms at: aQoppaForm ifAbsent: [^ nil])
		copyFrom: interval first to: interval last