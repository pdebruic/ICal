private - defaults
byWeekNosOrDefault: periods

	^ weeknumbers notEmpty
		ifTrue: [ self byWeekNos: weeknumbers withPeriods: periods ]
		ifFalse: [ periods ]