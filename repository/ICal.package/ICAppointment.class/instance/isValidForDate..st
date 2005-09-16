testing
isValidForDate: aDate
	^self startDateAndTime asDate <= aDate and: [self endDateAndTime asDate >= aDate].