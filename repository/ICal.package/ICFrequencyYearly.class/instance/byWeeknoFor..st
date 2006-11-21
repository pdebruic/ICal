accessing
byWeeknoFor: aDateAndTime
	| days weekStartDays |
	
	days := OrderedCollection new.
	weeknumbers isEmpty ifTrue: [ ^ days ].
	
	weekStartDays := (
		(self firstOfDay: (weekStartday ifNil: [ 2 ]) inMonthOf: (Month month: 1 year: aDateAndTime year))
		to: aDateAndTime daysInYear
		by: 7) asArray.
	
	weeknumbers do: [:weekno| | weekStart |
		weekStart := weekno < 0
			ifTrue: [ weekStartDays reverse at: weekno abs ]
			ifFalse: [ weekStartDays at: weekno ].
		
		0 to: 6 do: [ :offset|
			days add: (Date year: aDateAndTime year day: weekStart + offset).
		]
	].

	^ days.