testing
eventsBetween: aStartDateAndTime and: anEndDateAndTime
	| dates |
	
	anEndDateAndTime < aStartDateAndTime ifTrue: [ ^ OrderedCollection new ].
		
	dates := self frequency eventsStartingAt: aStartDateAndTime
		untilFalse: [:datesTmp :current|
			current <= anEndDateAndTime and: [
				datesTmp size = 0 or: [ datesTmp last < anEndDateAndTime ]
			]
		].
	dates size = 0 ifTrue: [ ^ dates ].
	dates last > anEndDateAndTime
		ifTrue: [ | end |
			end := (dates findFirst: [:date| date > anEndDateAndTime]) - 1.
			end = 0 ifTrue: [ ^ OrderedCollection new ].
			dates := dates copyFrom: 1 to: end.
		].
	
	^ dates