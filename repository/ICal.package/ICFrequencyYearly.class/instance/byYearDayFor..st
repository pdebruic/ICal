private
byYearDayFor: aMonth
	|weeks days|
	
	days := super byYearDayFor: aMonth.
	weeknumbers isEmpty ifTrue: [ ^ days ].
	
	weeks := self validWeekStartMonthDaysForMonth: aMonth.
	
	^Array streamContents: [ :stream |
		days do: [:day|
			(weeks anySatisfy: [:e| day between: e and: e + 6 ])
				ifTrue: [ stream nextPut: day ]
		]
	]