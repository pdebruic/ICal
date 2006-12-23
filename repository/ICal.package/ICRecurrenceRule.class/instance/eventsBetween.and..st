occurences
eventsBetween: aStartDateAndTime and: anEndDateAndTime
	
	anEndDateAndTime < aStartDateAndTime ifTrue: [ ^ OrderedCollection new ].	
	^ self frequency eventsStartingAt: aStartDateAndTime takeUntil: [:date| date >= anEndDateAndTime ]