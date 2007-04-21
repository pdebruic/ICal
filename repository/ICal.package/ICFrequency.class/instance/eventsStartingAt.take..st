enummerating
eventsStartingAt: aStartDateAndTime take: aNumber
	
	^ (((self eventsStartingAt: aStartDateAndTime) dropWhile: [:date| date < aStartDateAndTime]) take: aNumber) asOrderedCollection