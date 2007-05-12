occurrences
occurrencesBetween: aStartDateAndTime and: anEndDateAndTime
	|dates|

	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := recurrenceRules first eventsBetween: aStartDateAndTime and: anEndDateAndTime.
	
	recurrenceRules allButFirst do: [:rule|
		dates := dates mergeUnique: (rule eventsBetween: aStartDateAndTime and: anEndDateAndTime) ].

	^ dates asOrderedCollection collect: [:e| self occurrenceFromDate: e ]