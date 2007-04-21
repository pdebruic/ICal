enummerating
eventsStartingAt: aStartDateAndTime take: aNumber while: aBooleanBlock
	
	^ ((((self eventsStartingAt: aStartDateAndTime) dropWhile: [:date| date < aStartDateAndTime]) takeWhile: aBooleanBlock) take: aNumber) asOrderedCollection