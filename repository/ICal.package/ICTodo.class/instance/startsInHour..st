testing
startsInHour: aDateAndTime 
	^aDateAndTime <= self due
		and: [(aDateAndTime + 3600 seconds) >= self due]