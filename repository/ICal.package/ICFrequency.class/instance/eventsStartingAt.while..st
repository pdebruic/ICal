enummerating
eventsStartingAt: aStartDateAndTime while: aBooleanBlock
	
	^ (self eventsStartingAt: aStartDateAndTime) takeWhile: aBooleanBlock