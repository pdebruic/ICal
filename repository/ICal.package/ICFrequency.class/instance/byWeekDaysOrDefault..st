private - defaults
byWeekDaysOrDefault: periods

	^ weekdays notEmpty
		ifTrue: [ self byDays: weekdays withPeriods: periods ]
		ifFalse: [ periods ]