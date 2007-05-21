occurrences
occurrences: aNumber after: aDateAndTime
	|dates|

	dates := self occurrencesFromBlock: [:rule| rule eventsAfter: aDateAndTime ] ifNone: [ ^ self ].

	^ (dates take: aNumber) asOrderedCollection collect: [:e| self occurrenceFromDate: e ]