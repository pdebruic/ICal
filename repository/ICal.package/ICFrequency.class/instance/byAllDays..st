private - defaults
byAllDays: periods

	^ self byWeekDaysOrDefault: (self byDaysAndOccOrDefault: (self byMonthDaysOrDefault: (self byYearDaysOrDefault: periods)))