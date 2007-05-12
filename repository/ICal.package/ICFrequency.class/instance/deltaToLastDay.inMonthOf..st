private
deltaToLastDay: aDayString inMonthOf: aDateAndTime
	|monthLength endDay day|

	monthLength := aDateAndTime daysInMonth.
	endDay := (aDateAndTime asDate addDays: monthLength - aDateAndTime dayOfMonth) weekdayIndex.
	day := self dayIndexOf: aDayString.

	^ monthLength - 1 - (day > endDay
		ifTrue: [ 7 - (day - endDay) ]
		ifFalse: [ endDay - day ])