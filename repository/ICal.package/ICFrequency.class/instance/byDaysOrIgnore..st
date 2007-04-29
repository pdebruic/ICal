private - optional defaults
byDaysOrIgnore: periods

	^ self hasDates
		ifTrue: [ self byAllDays: periods ]
		ifFalse: [ periods ]