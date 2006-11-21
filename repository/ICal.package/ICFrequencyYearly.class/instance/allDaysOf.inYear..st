private
allDaysOf: aDayIndex inYear: aDateAndTime
	| days |
	
	days := OrderedCollection new.
	(self firstOfDay: aDayIndex inMonthOf: (Month month: 1 year: aDateAndTime year))
		to: aDateAndTime daysInYear
		by: 7
		do: [:day|
			days add: (Date year: aDateAndTime year day: day)
		].
	
	^ days.