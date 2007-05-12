occurrences
events

	^ true caseOf: {
		[ self hasRepetition not ]		-> [ frequency eventsStartingAt: frequency dtstart ].
		[ repetition isKindOf: Number ]	-> [ frequency events: repetition startingAt: frequency dtstart ].
	} otherwise: [ frequency eventsBetween: frequency dtstart and: repetition ]