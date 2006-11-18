private
byYearDayFor: aDateAndTime
	^Array streamContents: [ :stream |
		yeardays do: [:day|
			day < 0 ifTrue: [ day := aDateAndTime daysInYear - (day abs - 1) ].
			stream nextPut: (self dateClass year: aDateAndTime year day: day) ] ]