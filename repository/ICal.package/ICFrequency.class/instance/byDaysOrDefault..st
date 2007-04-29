private - defaults
byDaysOrDefault: periods

	^ self hasDates
		ifTrue: [ self byAllDays: periods ]
		ifFalse: [ self byMonthDays: self defaultDay withPeriods: periods ]