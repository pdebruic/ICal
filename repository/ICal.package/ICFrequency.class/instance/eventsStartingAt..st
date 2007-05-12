enummerating
eventsStartingAt: aStartDateAndTime

	^ (self bySecondsOrDefault:
		(self byMinutesOrDefault:
			(self byHoursOrDefault:
				(self byDaysOrDefault:
					(self byMonthsOrDefault:
						(self periodsStartingFrom: aStartDateAndTime))))))
		collect: [:period| period start ]