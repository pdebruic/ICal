enummerating
eventsBetween: aStartDateAndTime and: anEndDateAndTime

	^ self eventsStartingAt: aStartDateAndTime while: [:dt| dt <= anEndDateAndTime ]