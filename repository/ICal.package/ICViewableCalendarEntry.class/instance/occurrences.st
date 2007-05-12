occurrences
occurrences
	|dates infinite|

	self hasRecurrenceRules ifFalse: [ ^ self ].

	infinite := recurrenceRules anySatisfy: [:rule| rule hasRepetition not ].
	dates := recurrenceRules first events.
	
	recurrenceRules allButFirst do: [:rule| dates := dates mergeUnique: rule events ].

	^ (infinite
		ifTrue: [ dates ]
		ifFalse: [ dates asOrderedCollection ]) collect: [:e| self occurrenceFromDate: e ]