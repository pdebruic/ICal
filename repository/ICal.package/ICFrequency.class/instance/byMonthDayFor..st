private
byMonthDayFor: aMonth
	| days |
	
	days := OrderedCollection new.
	
	monthdays do: [:day|
		day < 0 	ifTrue: [ day := aMonth daysInMonth - (day abs - 1) ].
		days add: (self dateClass year: aMonth year month: aMonth month day: day).
	].

	^ days.