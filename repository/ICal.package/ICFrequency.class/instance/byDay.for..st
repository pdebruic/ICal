private
byDay: aDayIndex for: aMonth
	^ ((self firstOfDay: aDayIndex inMonthOf: aMonth) to: aMonth daysInMonth by: 7) asArray