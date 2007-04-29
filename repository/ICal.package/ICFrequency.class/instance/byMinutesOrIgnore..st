private - optional defaults
byMinutesOrIgnore: periods

	^ minutes notEmpty
		ifTrue: [ self byMinutes: self minutesOrDefault withPeriods: periods ]
		ifFalse: [ periods ]