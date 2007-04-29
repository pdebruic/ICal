enummerating
eventsStartingAt: aStartDateAndTime

	^ (self bySecondsOrDefault: (self byMinutesOrDefault: (self byHoursOrDefault: (self byDaysOrDefault: (self byMonthsOrDefault: self periods)))))
		collect: [:period| period start ]