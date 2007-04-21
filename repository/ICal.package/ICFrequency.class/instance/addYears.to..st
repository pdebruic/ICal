private
addYears: aNumber to: aDateAndTime
	|dtnext|
	
	dtnext := aDateAndTime.
	1 to: aNumber do: [:i| dtnext := dtnext + (Duration days: dtnext daysInYear) ].
	
	^ dtnext