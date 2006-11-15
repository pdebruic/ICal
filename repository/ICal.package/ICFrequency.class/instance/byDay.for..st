private
byDay: aDayIndex for: aDateAndTime
	| days |
	
	days := OrderedCollection new.
	(self firstOfDay: aDayIndex inMonthOf: aDateAndTime) to: aDateAndTime daysInMonth by: 7 do: [:day|
		days add: (Date year: aDateAndTime year month: aDateAndTime month day: day)
	].
	
	^ days.