private
byYearDayFor: aMonth
	^Array streamContents: [ :stream |
		yeardays do: [:day| |monthStart|
			monthStart := aMonth day.
			day < 0 ifTrue: [ day := aMonth daysInYear - (day abs - 1) ].
			(day between: monthStart and: monthStart + aMonth daysInMonth - 1)
				ifTrue: [ stream nextPut: day - monthStart + 1 ]
		]
	]