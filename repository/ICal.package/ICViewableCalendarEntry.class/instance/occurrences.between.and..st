occurrences
occurrences: aNumber between: aStartDateAndTime and: anEndDateAndTime
	|dates|

	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := recurrenceRules first eventsBetween: aStartDateAndTime and: anEndDateAndTime.
	
	recurrenceRules allButFirst do: [:rule|
		dates := dates merge: (rule eventsBetween: aStartDateAndTime and: anEndDateAndTime) ].

	^ (dates take: aNumber) asOrderedCollection collect: [:e| self occurrenceFromDate: e ]