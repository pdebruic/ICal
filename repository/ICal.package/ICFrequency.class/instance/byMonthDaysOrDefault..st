private - defaults
byMonthDaysOrDefault: periods

	^ monthdays notEmpty
		ifTrue: [ self byMonthDays: monthdays withPeriods: periods ]
		ifFalse: [ periods ]