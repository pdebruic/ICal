private - filtering
byMonths: monthsCollection withPeriods: periods

	^ self
		byRuleWithList: monthsCollection asArray
		start: [:start| DateAndTime year: start year month: 1 day: start dayOfMonth hour: start hour minute: start minute second: start second ]
		delta: [:month :dt| self addMonths: month - 1 to: dt ]
		add: [:n :dt| self addMonths: n to: dt ]
		next: [:dt| self addMonths: 12 to: dt ]
		withPeriods: periods