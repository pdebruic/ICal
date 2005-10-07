testing
startsInHour: aDateAndTime 
	^aDateAndTime <= self due
		and: [(aDateAndTime plusSeconds: 3600) >= self due]