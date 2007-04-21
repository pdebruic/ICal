private - defaults
byYearDaysOrDefault: periods

	^ yeardays notEmpty
		ifTrue: [ self byYearDays: yeardays withPeriods: periods ]
		ifFalse: [ periods ]