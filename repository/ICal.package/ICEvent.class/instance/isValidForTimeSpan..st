testing
isValidForTimeSpan: aTimeSpan
	^ self hasRecurrenceRules
		ifTrue: [ (self occurrencesBetween: aTimeSpan start and: aTimeSpan end) notEmpty ]
		ifFalse: [ self start asDate >= aTimeSpan start and: [self end asDate <= aTimeSpan end] ].