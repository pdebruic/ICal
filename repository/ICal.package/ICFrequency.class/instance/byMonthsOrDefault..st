private - defaults
byMonthsOrDefault: periods

	^ monthnumbers notEmpty
		ifTrue: [ self byMonths: monthnumbers withPeriods: periods ]
		ifFalse: [ periods ]