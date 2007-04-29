enummerating
events: aNumber between: aStartDateAndTime and: anEndDateAndTime

	^ self events: aNumber startingAt: aStartDateAndTime while: [:dt| dt <= anEndDateAndTime ]