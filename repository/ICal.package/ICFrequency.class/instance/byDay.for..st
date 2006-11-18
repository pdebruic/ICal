private
byDay: aDayIndex for: aDateAndTime
	^Array streamContents: [ :stream |
		(self firstOfDay: aDayIndex inMonthOf: aDateAndTime) to: aDateAndTime daysInMonth by: 7 do: [:day|
			stream nextPut: (self dateClass year: aDateAndTime year month: aDateAndTime month day: day) ] ]