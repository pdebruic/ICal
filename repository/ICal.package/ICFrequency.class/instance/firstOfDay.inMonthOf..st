private
firstOfDay: aDayIndex inMonthOf: aMonth
	| first |
	
	first := aMonth asDate weekdayIndex.
	
	^ aDayIndex < first
		ifTrue: [ 8 - (first - aDayIndex) ]
		ifFalse: [ 1 + (aDayIndex - first) ]