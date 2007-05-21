occurrences
occurrences: aNumber
	|dates|

	dates := self occurrencesFromBlock: [:rule| rule events ] ifNone: [ ^ self ].
	
	^ (dates take: aNumber) asOrderedCollection collect: [:e| self occurrenceFromDate: e ]