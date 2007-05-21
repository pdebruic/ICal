occurrences
occurrencesAfter: aDateAndTime
	|dates infinite|

	dates := self occurrencesFromBlock: [:rule| rule eventsAfter: aDateAndTime ] ifNone: [ ^ self ].
	infinite := recurrenceRules anySatisfy: [:rule| rule hasRepetition not ].

	^ (infinite
		ifTrue: [ dates ]
		ifFalse: [ dates asOrderedCollection ]) collect: [:e| self occurrenceFromDate: e ]