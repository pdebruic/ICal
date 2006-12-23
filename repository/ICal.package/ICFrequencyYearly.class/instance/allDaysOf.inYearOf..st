private
allDaysOf: aDayIndex inYearOf: aMonth
	^ ((self firstOfDay: aDayIndex inMonthOf: (Month month: 1 year: aMonth year)) to: aMonth daysInYear by: 7) asArray