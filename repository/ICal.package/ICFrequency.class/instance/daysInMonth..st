private
daysInMonth: aMonth
	|days|
	
	days := self byYearDayFor: aMonth.
	days := self intersect: (self byMonthDayFor: aMonth) with: days.
	days := self intersect: (self byDayFor: aMonth) with: days.
	
	^ days asSet asOrderedCollection sortBy: [:r :l| r < l]