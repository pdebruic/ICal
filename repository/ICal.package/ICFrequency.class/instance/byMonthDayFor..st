private
byMonthDayFor: aMonth
	^Array streamContents: [ :stream |
		monthdays do: [:day|
			day < 0 	ifTrue: [ day := aMonth daysInMonth - (day abs - 1) ].
			stream nextPut: day
		]
	]