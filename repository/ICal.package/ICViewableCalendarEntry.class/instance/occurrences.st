occurrences
occurrences
	|dates infinite|

	dates := self occurrencesFromBlock: [:rule| rule events ] ifNone: [ ^ self ].
	infinite := recurrenceRules anySatisfy: [:rule| rule hasRepetition not ].

	^ (infinite
		ifTrue: [ dates ]
		ifFalse: [ dates asOrderedCollection ]) collect: [:e| self occurrenceFromDate: e ]