private - defaults
byMonthsOrDefault: periods
	|tmpPeriods|

	tmpPeriods := self byWeekNosOrDefault: periods.
	
	^ (monthnumbers notEmpty or: [ yeardays isEmpty and: [ daysAndOccurrences isEmpty ] ] )
		ifTrue: [ self byMonths: self monthsOrDefault withPeriods: tmpPeriods ]
		ifFalse: [ tmpPeriods ]