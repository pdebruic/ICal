defaults
defaultDaysForMonth: aMonth

	weeknumbers isEmpty ifTrue: [ ^ super defaultDaysForMonth: aMonth ].

	^ Array streamContents: [:stream|
		(self validWeekStartMonthDaysForMonth: aMonth) do: [:weekStart|
			0 to: 6 do: [ :offset| |day|
				day := weekStart + offset.
				(day between: 1 and: aMonth daysInMonth)
					ifTrue: [ stream nextPut: day ]
			]
		]
	]