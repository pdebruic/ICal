occurrences
eventsBetween: aStartDateAndTime and: anEndDateAndTime
	|validDate|

	validDate := self toValidDate: aStartDateAndTime.
	
	^ (true caseOf: {
		[ self hasRepetition not ]		-> [ frequency eventsBetween: validDate and: anEndDateAndTime ].
		[ repetition isKindOf: Number ]	-> [ frequency events: repetition between: frequency dtstart and: anEndDateAndTime ].
	} otherwise: [ frequency eventsBetween: validDate and: (repetition min: anEndDateAndTime) ])
		dropWhile: [:dt| dt < aStartDateAndTime ]