private - filtering
byYearDays: daysCollection withPeriods: periods

	^ self
		byRuleWithList: daysCollection asArray
		start: [:start| DateAndTime year: start year month: 1 day: 1 hour: start hour minute: start minute second: start second ]
		delta: [:day :dt| |actual|
			actual := day < 0
				ifTrue: [ dt daysInYear - (day abs) ]
				ifFalse: [ day - 1 ].
			(actual between: 0 and: dt daysInYear - 1)
				ifTrue: [ dt + (Duration days: actual) ]
				ifFalse: [ nil ] ]
		add: [:n :dt| dt + (Duration days: n) ]
		next: [:dt| self addYears: 1 to: dt ]
		withPeriods: periods