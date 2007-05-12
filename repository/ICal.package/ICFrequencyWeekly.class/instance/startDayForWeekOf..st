private
startDayForWeekOf: aDateAndTime
	|wkst weekdayIndex dayOfMonth|

	wkst := self dayIndexOf: weekStartday.
	weekdayIndex := aDateAndTime dayOfWeek.
	dayOfMonth := aDateAndTime dayOfMonth.

	^ wkst > weekdayIndex
		ifTrue: [ dayOfMonth - (7 - (wkst - weekdayIndex))]
		ifFalse: [ dayOfMonth - (weekdayIndex - wkst) ]