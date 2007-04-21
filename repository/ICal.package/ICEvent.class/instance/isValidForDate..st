testing
isValidForDate: aDate
	^ self hasRecurrenceRules
		ifTrue: [ (self occurrencesBetween: aDate start and: aDate end) notEmpty ]
		ifFalse: [ self start asDate <= aDate and: [self end asDate >= aDate] ].
		
	"NOTE: my addition for recurrenceRules is probably wrong"