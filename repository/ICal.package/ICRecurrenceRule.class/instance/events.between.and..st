testing
events: aNumber between: aStartDateAndTime and: anEndDateAndTime
	| dates end |
	
	anEndDateAndTime < aStartDateAndTime ifTrue: [ ^ OrderedCollection new ].
	
	dates := self frequency eventsStartingAt: aStartDateAndTime
		untilFalse: [:datesTmp :current|
			current <= anEndDateAndTime and: [ 
				datesTmp size = 0
				or: [ datesTmp size < aNumber and: [datesTmp last < anEndDateAndTime] ]
			]
		].

	end := dates size.
	end = 0 ifTrue: [ ^ dates ].
	
	end > aNumber ifTrue: [ end := aNumber ].
	(dates at: end) > anEndDateAndTime
		ifTrue: [ end := (dates findFirst: [:date| date >= anEndDateAndTime]) - 1 ].
	
	dates size > end ifTrue: [ dates := dates copyFrom: 1 to: end ].
	
	^ dates.