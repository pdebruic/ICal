growing
datesForMonthFrom: existingDates with: byValue
	| lastDay nextDay dates startDate |
	dates := OrderedCollection new.
	startDate := existingDates first.
	lastDay := startDate daysInMonth.
	byValue isString
		ifTrue: [ 
			nextDay := self nextOccuranceOf: byValue starting: startDate plus: startDate dayOfMonth.
			nextDay >lastDay ifTrue: [nextDay :=nextDay -7]. 
			[ nextDay <= lastDay ]
				whileTrue: [ 
					dates add: (self newDateForMonthContaining: startDate on: nextDay).
					nextDay := nextDay + 7 ] ]
		ifFalse: [ 
			nextDay := self ordinalOccuranceOf: byValue inSamePeriodAs: startDate limitedTo: startDate daysInMonth.
			dates add: (self newDateForMonthContaining: startDate on: nextDay) ].
	^ dates