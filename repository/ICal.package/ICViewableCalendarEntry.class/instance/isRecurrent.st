testing
isRecurrent
	^self hasRecurrenceRule
		or: [ self recurrenceDates notEmpty ]