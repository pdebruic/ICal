occurrences
eventsAfter: aDateAndTime
	|validDate|

	validDate := self toValidDate: aDateAndTime.
	
	^ true caseOf: {
		[ self hasRepetition not ]				-> [ frequency eventsStartingAt: validDate ].
		[ repetition class isKindOf: #Number ]	-> [ frequency events: repetition startingAt: frequency dtstart ].
	} otherwise: [ frequency eventsBetween: validDate and: repetition ]