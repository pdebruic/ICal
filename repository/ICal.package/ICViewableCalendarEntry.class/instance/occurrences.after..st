occurrences
occurrences: aNumber after: aDateAndTime
	|dates|

	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := recurrenceRules first eventsAfter: aDateAndTime.
	
	recurrenceRules allButFirst do: [:rule| dates := dates mergeUnique: (rule eventsAfter: aDateAndTime) ].

	^ (dates take: aNumber) asOrderedCollection collect: [:e| self occurrenceFromDate: e ]