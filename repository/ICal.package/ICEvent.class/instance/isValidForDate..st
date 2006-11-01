testing
isValidForDate: aDate
	^ self hasRecurrenceRules
		ifTrue: [ (self occurencesBetween: aDate start and: aDate end) notEmpty ]
		ifFalse: [ self start asDate <= aDate and: [self end asDate >= aDate] ].