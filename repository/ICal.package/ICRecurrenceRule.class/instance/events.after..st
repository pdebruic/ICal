testing
events: aNumber after: aDateAndTime
	| dates |
	
	dates := self frequency eventsStartingAt: aDateAndTime
		untilFalse: [:datesTmp :current| datesTmp size < aNumber ].
	dates size > aNumber ifTrue: [ dates := dates copyFrom: 1 to: aNumber ].
	^ dates.