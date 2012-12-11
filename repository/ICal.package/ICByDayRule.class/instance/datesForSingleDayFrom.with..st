growing
datesForSingleDayFrom: existingDates with: byValue
	| nextDay startDate |
	startDate:=existingDates first.
	nextDay := self nextOccuranceOf: byValue starting: startDate plus: startDate dayOfMonth .
	^ Array with: (self newDateForMonthContaining:startDate on: nextDay)