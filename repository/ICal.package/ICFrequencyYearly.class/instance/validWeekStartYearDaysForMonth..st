private
validWeekStartYearDaysForMonth: aMonth
	| weeks monthStart monthEnd |
	
	weeks := self weekStartYearDatesFor: aMonth.
	monthStart := aMonth day.
	monthEnd := monthStart + aMonth daysInMonth.
	
	^ ((weeknumbers collect: [:e| e < 0 ifTrue: [ weeks reverse at: e abs ] ifFalse: [ weeks at: e ] ])
		select: [:day|
			(day between: monthStart and: monthEnd)
			  or: [ day + 6 between: monthStart and: monthEnd ] ])