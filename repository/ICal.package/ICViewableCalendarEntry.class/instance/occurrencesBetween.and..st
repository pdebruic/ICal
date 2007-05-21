occurrences
occurrencesBetween: aStartDateAndTime and: anEndDateAndTime
	|dates|

	dates := self occurrencesFromBlock: [:rule| rule eventsBetween: aStartDateAndTime and: anEndDateAndTime ] ifNone: [ ^ self ].

	^ dates asOrderedCollection collect: [:e| self occurrenceFromDate: e ]