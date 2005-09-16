events
eventsForTimeStamp: timestamp 
	^self events select: [:event | event startsInHour: timestamp]