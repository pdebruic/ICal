accessing
nextFrequencyFrom: aDateAndTime with: aCollection ifNone: aFailBlock
	| next |
			
	next := aDateAndTime asYear.
	^ [ | current |
		current := next.
		next := Year year: (next year + interval).
		current.
	] fixTemps