private - defaults
byDaysOrDefault: periods

	^ self hasDates
		ifTrue: [ self byAllDays: periods ]
		ifFalse: [ self byDays: self defaultDay withPeriods: periods ]