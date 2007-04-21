enummerating
eventsStartingAt: aStartDateAndTime takeWhile: aBooleanBlock
	
	^ (((self eventsStartingAt: aStartDateAndTime) dropWhile: [:date| date < aStartDateAndTime]) takeWhile: aBooleanBlock) asOrderedCollection