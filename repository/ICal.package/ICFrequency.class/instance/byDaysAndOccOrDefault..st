private - defaults
byDaysAndOccOrDefault: periods

	^ daysAndOccurrences notEmpty
		ifTrue: [ self byDaysAndOccurrences: daysAndOccurrences withPeriods: periods ]
		ifFalse: [ periods ]