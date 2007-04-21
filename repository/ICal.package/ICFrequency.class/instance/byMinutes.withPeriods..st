private - filtering
byMinutes: minutesCollection withPeriods: periods

	^ self
		byRuleWithList: minutesCollection asArray
		start: [:start| DateAndTime year: start year month: start month day: start dayOfMonth hour: start hour minute: 0 second: start second ]
		delta: [:min :dt| dt + (Duration minutes: min) ]
		next: [:dt| dt + (Duration hours: 1) ]
		withPeriods: periods