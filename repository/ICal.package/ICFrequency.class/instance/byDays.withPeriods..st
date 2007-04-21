private - filtering
byDays: daysCollection withPeriods: periods

	^ self
		byRuleWithList: daysCollection asArray
		start: [:start| start - (Duration days: (start dayOfWeek - 1)) ]
		delta: [:day :dt| dt + (Duration days: (self dayIndexOf: day) - 1) ]
		add: [:n :dt| dt + (Duration days: n) ]
		next: [:dt| dt + (Duration days: 7) ]
		withPeriods: periods