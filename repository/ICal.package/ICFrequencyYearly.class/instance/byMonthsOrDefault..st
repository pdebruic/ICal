private - defaults
byMonthsOrDefault: periods

	^ self byMonths: self monthsOrDefault withPeriods: (self byWeekNosOrDefault: periods)