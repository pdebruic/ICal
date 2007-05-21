occurrences
occurrences: aNumber between: aStartDateAndTime and: anEndDateAndTime
	|dates|

	dates := self occurrencesFromBlock: [:rule| rule eventsBetween: aStartDateAndTime and: anEndDateAndTime ] ifNone: [ ^ self ].

	^ (dates take: aNumber) asOrderedCollection collect: [:e| self occurrenceFromDate: e ]