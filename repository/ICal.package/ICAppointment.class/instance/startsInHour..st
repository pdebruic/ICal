testing
startsInHour: timestamp 
	^timestamp <= self startDateAndTime asTimeStamp 
		and: [(timestamp plusSeconds: 3600) >= self startDateAndTime asTimeStamp]