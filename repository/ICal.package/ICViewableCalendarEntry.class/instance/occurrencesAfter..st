occurrences
occurrencesAfter: aDateAndTime
	|dates infinite|

	self hasRecurrenceRules ifFalse: [ ^ self ].

	infinite := recurrenceRules anySatisfy: [:rule| rule hasRepetition not ].
	dates := recurrenceRules first eventsAfter: aDateAndTime.
	
	recurrenceRules allButFirst do: [:rule| dates := dates mergeUnique: (rule eventsAfter: aDateAndTime) ].

	^ (infinite
		ifTrue: [ dates ]
		ifFalse: [ dates asOrderedCollection ]) collect: [:e| self occurrenceFromDate: e ]