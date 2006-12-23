occurences
events: aNumber between: aStartDateAndTime and: anEndDateAndTime
	| dateCount |
	
	anEndDateAndTime < aStartDateAndTime ifTrue: [ ^ OrderedCollection new ].
	
	dateCount := 0.
	
	^ self frequency eventsStartingAt: aStartDateAndTime
		takeUntil: [:date| dateCount >= aNumber or: [ dateCount := dateCount + 1. date >= anEndDateAndTime ] ]