private
firstOfDay: aDayIndex inMonthOf: aDateAndTime
	| first |
	
	first := aDateAndTime asMonth asDate weekdayIndex.
	
	^ aDayIndex < first
		ifTrue: [ 8 - (first - aDayIndex) ]
		ifFalse: [ 1 + (aDayIndex - first) ]