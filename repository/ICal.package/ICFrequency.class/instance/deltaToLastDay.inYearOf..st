private
deltaToLastDay: aDayString inYearOf: aDateAndTime
	|yearLength endDay day|

	yearLength := aDateAndTime daysInYear.
	endDay := (aDateAndTime asDate addDays: yearLength - aDateAndTime dayOfMonth) weekdayIndex.	#todo. "test this"
	day := self dayIndexOf: aDayString.

	^ yearLength - 1 - (day > endDay
		ifTrue: [ 7 - (day - endDay) ]
		ifFalse: [ endDay - day ])