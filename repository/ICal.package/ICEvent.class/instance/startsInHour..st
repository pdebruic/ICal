testing
startsInHour: aDateAndTime 
	^aDateAndTime <= self start
		and: [(aDateAndTime + 3600 seconds) >= self start ]