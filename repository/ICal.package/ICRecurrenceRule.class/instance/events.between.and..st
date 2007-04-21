occurrences
events: aNumber between: aStartDateAndTime and: anEndDateAndTime
	
	anEndDateAndTime < aStartDateAndTime ifTrue: [ ^ OrderedCollection new ].	
	^ self frequency eventsStartingAt: aStartDateAndTime take: aNumber while: [:date| date <= anEndDateAndTime ]