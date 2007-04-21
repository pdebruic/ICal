occurrences
eventsBetween: aStartDateAndTime and: anEndDateAndTime
	
	anEndDateAndTime < aStartDateAndTime ifTrue: [ ^ OrderedCollection new ].	
	^ self frequency eventsStartingAt: aStartDateAndTime takeWhile: [:date| date <= anEndDateAndTime ]