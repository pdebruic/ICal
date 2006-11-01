testing
eventsBetween: aStartTimeSpan and: anEndTimeSpan
	| dates |
	
	anEndTimeSpan < aStartTimeSpan ifTrue: [ ^ OrderedCollection new ].
		
	dates := self frequency eventsStartingAt: aStartTimeSpan
		untilFalse: [:datesTmp| datesTmp size = 0 or: [ datesTmp last < anEndTimeSpan ] ].
	dates size = 0 ifTrue: [ ^ dates ].
	dates last > anEndTimeSpan
		ifTrue: [ | end |
			end := (dates findFirst: [:date| date > anEndTimeSpan]) - 1.
			end = 0 ifTrue: [ ^ OrderedCollection new ].
			dates := dates copyFrom: 1 to: end.
		].
	
	^ dates