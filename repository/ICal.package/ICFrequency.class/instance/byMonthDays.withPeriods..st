private - filtering
byMonthDays: daysCollection withPeriods: periods

	^ self
		byRuleWithList: daysCollection asArray
		start: [:start| DateAndTime year: start year month: start month day: 1 hour: start hour minute: start minute second: start second ]
		delta: [:day :dt| |actual|
			actual := day < 0
				ifTrue: [ dt daysInMonth - (day abs) ]
				ifFalse: [ day - 1 ].
			(actual between: 0 and: dt daysInMonth - 1)
				ifTrue: [ dt +(Duration days: actual) ]
				ifFalse: [ nil ] ]
		add: [:n :dt| dt + (Duration days: n) ]
		next: [:dt| self addMonths: 1 to: dt ]
		withPeriods: periods