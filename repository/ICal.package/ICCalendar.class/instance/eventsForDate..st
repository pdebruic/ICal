events
eventsForDate: aDate 
	^(self events select: [:event | event isValidForDate: aDate]) 
		asSortedCollection