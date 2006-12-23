enummerating
eventsStartingAt: aStartDateAndTime takeUntil: aBooleanBlock
	
	^ ((self eventsStartingAt: aStartDateAndTime) takeUntil: aBooleanBlock) asOrderedCollection