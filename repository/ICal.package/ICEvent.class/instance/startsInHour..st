testing
startsInHour: timestamp 
	^timestamp <= self start asTimeStamp 
		and: [(timestamp plusSeconds: 3600) >= self start asTimeStamp]