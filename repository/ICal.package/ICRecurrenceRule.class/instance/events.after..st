testing
events: aNumber after: aTimeSpan
	| dates |
	
	dates := self frequency eventsStartingAt: aTimeSpan
		untilFalse: [:datesTmp| datesTmp size < aNumber ].
	dates size > aNumber ifTrue: [ dates := dates copyFrom: 1 to: aNumber ].
	^ dates.