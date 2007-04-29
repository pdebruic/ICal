enummerating
events: aNumber startingAt: aStartDateAndTime while: aBooleanBlock
	
	^ ((self eventsStartingAt: aStartDateAndTime) takeWhile: aBooleanBlock) take: aNumber