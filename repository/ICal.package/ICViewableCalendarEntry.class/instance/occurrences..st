occurrences
occurrences: aNumber
	|dates|

	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := recurrenceRules first events.
	
	recurrenceRules allButFirst do: [:rule| dates := dates mergeUnique: rule events ].

	^ (dates take: aNumber) asOrderedCollection collect: [:e| self occurrenceFromDate: e ]