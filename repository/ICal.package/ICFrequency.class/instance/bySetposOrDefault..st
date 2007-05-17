private - defaults
bySetposOrDefault: dates

	^ positions notEmpty
		ifTrue: [ self byPositions: positions withDates: dates ]
		ifFalse: [ dates ]