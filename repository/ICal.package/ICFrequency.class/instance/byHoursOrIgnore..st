private - optional defaults
byHoursOrIgnore: periods

	^ hours notEmpty
		ifTrue: [ self byHours: self hoursOrDefault withPeriods: periods ]
		ifFalse: [ periods ]