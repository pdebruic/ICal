private
byMonthDayFor: aDateAndTime
	^Array streamContents: [ :stream |
		monthdays do: [:day|
			day < 0 	ifTrue: [ day := aDateAndTime daysInMonth - (day abs - 1) ].
			stream nextPut: (self dateClass year: aDateAndTime year month: aDateAndTime month day: day) ] ]