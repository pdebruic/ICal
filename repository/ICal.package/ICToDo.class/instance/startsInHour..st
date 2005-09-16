testing
startsInHour: timestamp 
	^timestamp <= self tsDeadline asTimeStamp 
		and: [(timestamp plusSeconds: 3600) >= self tsDeadline asTimeStamp]