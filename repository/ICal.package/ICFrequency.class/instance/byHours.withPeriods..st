private - filtering
byHours: hoursCollection withPeriods: periods

	^ self
		byRuleWithList: hoursCollection asArray
		start: [:start| DateAndTime year: start year month: start month day: start dayOfMonth hour: 0 minute: start minute second: start second ]
		delta: [:hour :dt| dt + (Duration hours: hour) ]
		next: [:dt| dt + (Duration days: 1) ]
		withPeriods: periods