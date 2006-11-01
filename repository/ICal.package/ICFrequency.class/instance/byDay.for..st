private
byDay: aDayIndex for: aMonth
	| days |
	
	days := OrderedCollection new.
	(self firstOfDay: aDayIndex inMonth: aMonth) to: aMonth daysInMonth by: 7 do: [:day|
		days add: (Date year: aMonth year month: aMonth month day: day)
	].
	
	^ days.