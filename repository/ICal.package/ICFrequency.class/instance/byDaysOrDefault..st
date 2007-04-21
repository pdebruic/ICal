private - defaults
byDaysOrDefault: periods

	^ self hasDates
		ifTrue: [ self byWeekDaysOrDefault: (self byDaysAndOccOrDefault: (self byMonthDaysOrDefault: (self byYearDaysOrDefault: periods))) ]
		ifFalse: [ self byMonthDays: self defaultDay withPeriods: periods ]