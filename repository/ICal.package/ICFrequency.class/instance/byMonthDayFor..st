private
byMonthDayFor: aDateAndTime
	| days |
	
	days := OrderedCollection new.
	
	monthdays do: [:day|
		day < 0 	ifTrue: [ day := aDateAndTime daysInMonth - (day abs - 1) ].
		days add: (Date year: aDateAndTime year month: aDateAndTime month day: day).
	].

	^ days.