testing
events: aNumber between: aStartTimeSpan and: anEndTimeSpan
	| dates end |
	
	anEndTimeSpan < aStartTimeSpan ifTrue: [ ^ OrderedCollection new ].
	
	dates := self frequency eventsStartingAt: aStartTimeSpan
		untilFalse: [:datesTmp|
			datesTmp size = 0
			or: [ datesTmp size < aNumber and: [datesTmp last < anEndTimeSpan] ]
		].

	end := dates size.
	end = 0 ifTrue: [ ^ dates ].
	
	end > aNumber ifTrue: [ end := aNumber ].
	(dates at: end) > anEndTimeSpan
		ifTrue: [ end := (dates findFirst: [:date| date >= anEndTimeSpan]) - 1 ].
	
	dates size > end ifTrue: [ dates := dates copyFrom: 1 to: end ].
	
	^ dates.