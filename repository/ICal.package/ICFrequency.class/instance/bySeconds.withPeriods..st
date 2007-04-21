private - filtering
bySeconds: secondsCollection withPeriods: periods

	^ self
		byRuleWithList: secondsCollection asArray
		start: [:start| DateAndTime year: start year month: start month day: start dayOfMonth hour: start hour minute: start minute second: 0 ]
		delta: [:sec :dt| dt + (Duration seconds: sec) ]
		next: [:dt| dt + (Duration minutes: 1) ]
		withPeriods: periods