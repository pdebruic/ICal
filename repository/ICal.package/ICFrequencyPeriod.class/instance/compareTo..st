converting
compareTo: anICFrequencyPeriod
	| otherEnd startMax |
	
	otherEnd := anICFrequencyPeriod end.
	startMax := start max: anICFrequencyPeriod start.
	
	^ true caseOf: {
		[ end < otherEnd ] -> [ ICFrequencyPeriod new start: startMax end: end ].
		[ end > otherEnd ] -> [ ICFrequencyPeriod new start: startMax end: otherEnd ].
	} otherwise: [ ICFrequencyPeriod new start: startMax end: end ]